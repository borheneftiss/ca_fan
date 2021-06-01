<?php
require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';
require_once( ABSPATH . 'wp-admin/includes/image.php' );
require_once( ABSPATH . 'wp-admin/includes/file.php' );
require_once( ABSPATH . 'wp-admin/includes/media.php' );
class ClientEntity
{

    public function registerclient($request)
    {
        global $wpdb;

        $firstname = $request['firstname'];
        if ((!preg_match("/^[A-Za-z]+([\ A-Za-z]+)*/", $firstname))) {
            $errortab[] = "firstname";
        }

        $lastname = $request['lastname'];
        if ((!preg_match("/^[A-Za-z]+([\ A-Za-z]+)*/", $lastname))) {
            $errortab[] = "lastname";
        }

        $telephone = $request['telephone'];
        if ((!preg_match("/^[0-9]{8}$/", $telephone))) {
            $errortab[] = "telephone";
        }

        $cin = $request['cin'];
        if ((!preg_match("/^[0-9]{8}$/", $cin))) {
            $errortab[] = "cin";
        }

        $birthday = $request['birthday'];
        if ($birthday != date("d-m-Y", strtotime($birthday))) {
            $errortab[] = "birthday";
        }

        $email = $request['email'];
        if (!(filter_var($email, FILTER_VALIDATE_EMAIL))) {
            $errortab[] = "email";
        }

        $city = $request['city'];
        if ((!preg_match("/^[a-zA-ZàâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]{3,}[a-zA-Z 0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]*$/", $city))) {
            $errortab[] = "city";
        }

        $address = $request['address'];
        if ((!preg_match("/^[a-zA-Z0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]+[a-zA-Z 0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]+$/", $address))) {
            $errortab[] = "address";
        }

        $idrecoverymode = $request['idrecoverymode']; 
        if ((!preg_match("/^[0-9]+$/", $idrecoverymode)) || !$this->check_delivry_meth($idrecoverymode)) {
            $errortab[] = "idrecoverymode";
        }

        $idpaiementmode = $request['idpaiementmode'];
        if ((!preg_match("/^[0-9]+$/", $idpaiementmode)) || !$this->check_paiement_meth($idpaiementmode)) {
            $errortab[] = "idpaiementmode";
        }

        $idproduits = $request['idproduits'];
        if (!$this->check_produits($idproduits)) {
            $errortab[] = "idproduits";
        }

        $typeCard = $request['typeCard'];
        if ((!preg_match("/^[0-9]+$/", $typeCard)) || !$this->check_choix_carte_meth($typeCard)) {
            $errortab[] = "typeCard";
        }
        /* a completer*/
        $existphone = $this->check_phone_exist($telephone);
        
        if (!$existphone) {
            $errortab[] = "phone_exist";
        }

        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        }

        $date = date_create($birthday);
        $birthday = date_format($date, "Y-m-d");
        $res = $wpdb->get_results("START TRANSACTION");
        //search client exist(email and cin unique)
        $exist = $this->check_client_exist($cin,$telephone);
        
        if ($exist->status == "notexist") {
            //save customer
            $table = 'clients';
            $data = array('Firstname' => $firstname, 'Lastname' => $lastname, 'Email' => $email, 'Birthday' => $birthday, 'City' => $city, 'Cin' => $cin, 'Adress' => $address);
            $format = array();
            $insertcustomer = $wpdb->insert($table, $data, $format);
            if ($wpdb->last_error!='') {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data =[];
                $JSONObj->error = ['erreur_serveur'].$wpdb->last_error;
                return ($JSONObj);
    
            }
            $client_id = $wpdb->insert_id;
        }
        else {
            $client_id = $exist->data;
        }
        if($client_id!=0)
        {
 
        //save phone
        $table = 'phone';
        $data = array('number' => $telephone, 'idclient' => $client_id);
        $format = array();
        //check if phone exist
        if($existphone->status == "phonenotexist")
        {
            $insertphone = $wpdb->insert($table, $data, $format);
            if ($wpdb->last_error!='') {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data =$exist;
                $JSONObj->error = ['erreur_serveur'];
                return ($JSONObj);
    
            }
        }
        

        //generate card number
        $cardnum = $this->associatecard();
        //save card
        $exist_phone_card=$this->check_phone_card_exist($telephone);
        
        if(!$exist_phone_card)
        {
            $table = 'card';
            $data = array('Numero' => $cardnum, 'Tel' => $telephone, 'typeCard' => $typeCard);
            $format = array();
            $insertcard = $wpdb->insert($table, $data, $format);
            if ($wpdb->last_error!='') {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data =$wpdb->last_error;
                $JSONObj->error = ['erreur_servxcceur'];
                return ($JSONObj);
    
            }
            $message='Votre numéro de carte est : ' . $cardnum.' et numéro de téléphone est :' .$telephone ;
            $to=$email ;
            $subject='Identifiants CA';
            $table = 'wp_emtr_email';
         
            $data = array('to' => $to, 'subject' => $subject, 'message' => $message, 'headers' => $headers);
           
            $format = array();
            $insertemail = $wpdb->insert($table, $data, $format);
            if ($wpdb->last_error!='') {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data =$wpdb->last_error;
                $JSONObj->error = ['erreur_serveurInsertMail'];
                return ($JSONObj);
    
            }
            $Email_id = $wpdb->insert_id;
            $resultSent= wp_mail($to, $subject, $message );
            if ($resultSent) {

                $res = $wpdb->update(
                    'wp_emtr_email',
                    array(
                        
                        'sent' => 0,
    
                    ),
                    array('email_id' => $Email_id),
                    array(
                       
                        '%d',
                    ),
                    array('%d')
                );
               
                
            } 
            else {
                $res = $wpdb->update(
                    'wp_emtr_email',
                    array(
                        
                        'sent' => 1,
    
                    ),
                    array('email_id' => $Email_id),
                    array(
                       
                        '%d',
                    ),
                    array('%d')
                );
                
            }
        //save commande
        $table = 'commande';
        $data = array('telephone' => $telephone, 'idrecoverymode' => $idrecoverymode, 'idpaiementmode' => $idpaiementmode);
        $format = array();
        $insertcommande = $wpdb->insert($table, $data, $format);

        if ($insertcommande === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data =$wpdb->last_error;
            $JSONObj->error = ['erreur_serveur'];
            return ($JSONObj);

        } else {

            $products = explode(";", $idproduits);
            $idcmd = $wpdb->insert_id;
            for ($i = 0; $i < count($products); $i++) {
                $idpro = $products[$i];
                $prix = get_post_meta($idpro, 'caproduit_prix', true);
                $table = 'panier';
                $data = array('idcommande' => $idcmd, 'idproduit' => $idpro, 'prix' => $prix);
                $format = array();
                $insertpanier = $wpdb->insert($table, $data, $format);

                if ($insertpanier === false) {
                    $res = $wpdb->get_results("ROLLBACK");
                    $JSONObj = new stdClass();
                    $JSONObj->status = "fail";
                    $JSONObj->data = [];
                    return $data;
                    $JSONObj->error = ['erreur_serveurc'];
                    return ($JSONObj);

                }

            }

            $JSONc = new stdClass();
            $JSONc->idcommande = $idcmd;
            $res = $wpdb->get_results("COMMIT");
            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = $JSONc;
            $JSONObj->exist = $exist;
            $JSONObj->error = [];
            return ($JSONObj);

        }
        }
        else
        {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data =[];
            $JSONObj->error = ['phone_associated_card'];
            return ($JSONObj);
        }
    }
    else
    {
        $JSONObj = new stdClass();
        $JSONObj->status = "fail";
        $JSONObj->data =$wpdb->last_error;
        $JSONObj->error = ['erreur_serveuxwr'];
        return ($JSONObj);
    }

    }
    public function authenticateclient_V0($request)
    {

        $tab = array();

        global $wpdb;
        $telephone = $request['telephone'];
        if ((!preg_match("/^[0-9]{8}$/", $telephone))) {
            $errortab[] = "telephone";
        }

        $cardnum = $request['numero'];
        if (empty($request['numero'])) {
            $errortab[] = "Numero";
        }
        /* if ((!preg_match("/^[0-9]{13}$/", $cardnum))) {
        $errortab[] = "Numero";
        }  */
        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        } else {

            $sql = "SELECT cl.*, c.Numero as Numero,c.Tel as number FROM card c,phone p,clients cl WHERE c.Numero='$cardnum' and c.Tel='$telephone' and p.number=c.`Tel` and p.idclient=cl.ID";
            // return $sql;
            $return = $wpdb->get_results($sql);
            $JSONObj = new stdClass();
            if (empty($return)) {

                $JSONObj->status = "notexist";
                $JSONObj->data = [];
                $JSONObj->error = "mismatched";

            } else {

                foreach ($return as $rowClient) {

                    //$clientDetails=" SELECT * FROM `clients` , ( SELECT number FROM phone ) as number, ( SELECT Numero, Nbpoint FROM card ) as Nbpoint where number= '".$telephone."' ";

                    //$client = $wpdb->get_results($clientDetails);
                    //foreach ($client as $rowClient) {

                    $tab["idclient"] = $rowClient->ID;
                    $tab["telephone"] = $rowClient->number;
                    $tab["cardID"] = $rowClient->Numero;
                    $tab["nbpoint"] = $rowClient->Nbpoint;
                    $tab["firstname"] = $rowClient->firstname;
                    $tab["lastname"] = $rowClient->lastname;
                    $tab["email"] = $rowClient->email;
                    $tab["birthday"] = $rowClient->birthday;
                    $tab["city"] = $rowClient->city;
                    $tab["cin"] = $rowClient->cin;
                    $tab["address"] = $rowClient->adress;
                    $tab["imageurl"] = wp_get_attachment_image_src($rowClient->imageid,'full')[0];

                    $jwtobj = new JWT_Controller();
                    $token = $jwtobj->setsession($rowClient->ID, $rowClient->Numero);

                    if ($token !== false) {
                        $tab["token"] = $token;
                    } else {
                        $JSONObj = new stdClass();
                        $JSONObj->status = "fail";
                        $JSONObj->data = [];
                        $JSONObj->error = "erreur_serveur";
                        return ($JSONObj);
                    }

                    // }
                }
                $JSONObj->status = "exist";
                $JSONObj->data = $tab;
                $JSONObj->error = [];
            }
            return ($JSONObj);

        }

    }
    public function authenticateclient($request)
    {   
        $telephone = $request['telephone'];
        $cardnum = $request['numero'];
        $token = $request['token'];
        $tab = array();

        global $wpdb;

        if ( (empty($telephone)) && (empty($cardnum))) 
        {
            $jwtobj = new JWT_Controller();
            $decoded = $jwtobj->checksession($token); 
            if ($decoded === false) {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data = array();
                $JSONObj->error = "log_in";
                return ($JSONObj);
            }
            $userid = $decoded->data->id;
            $cardid = $decoded->data->card;
            $nbPoints = "select COALESCE(sum(s.score),0) as score from scores s WHERE s.idclient= '$userid' ";
            $sql = "select cl.* , cd.Numero, cd.Tel, cd.typecard  from clients cl , card cd WHERE cd.Numero = '$cardid' AND cl.ID= '$userid' ";
           
            $return = $wpdb->get_results($sql);
            $score = $wpdb->get_results($nbPoints);
            $JSONObj = new stdClass();
            if (empty($return)) {

                $JSONObj->status = "notexist";
                $JSONObj->data = [];
                $JSONObj->error = "notexist";

            } 
            else 
            {
                foreach ($return as $rowClient) {
                    foreach ($score as $scoreClient) {
                        $tab["nbpoints"] = $scoreClient->score;
                    }
                    $tab["idclient"] = $rowClient->ID;
                    $tab["telephone"] = $rowClient->Tel;
                    $tab["cardID"] = $rowClient->Numero;
                    $tab["firstname"] = $rowClient->firstname;
                    $tab["lastname"] = $rowClient->lastname;
                    $tab["email"] = $rowClient->email;
                    $tab["birthday"] = $rowClient->birthday;
                    $tab["city"] = $rowClient->city;
                    $tab["cin"] = $rowClient->cin;
                    $tab["address"] = $rowClient->adress;
                    $tab["typecard"] = $rowClient->typecard;
                    
                    $tab["imageurl"] = wp_get_attachment_image_src($rowClient->imageid,'full')[0];
                    
                }
                $JSONObj->status = "exist";
                $JSONObj->data = $tab;
                $JSONObj->error = [];
            }
            return ($JSONObj);


        }
        else if ( (!empty($telephone)) && (!empty($cardnum))) 
        {
            if ((!preg_match("/^[0-9]{8}$/", $telephone))) {
                $errortab[] = " vérifier votre téléphone";
            }
            if (!empty($errortab)) {

                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data = [];
                $JSONObj->error = $errortab;
                return ($JSONObj);
            } else {
                $sql = "SELECT cl.*, c.Numero as Numero,c.Tel as number FROM card c,phone p,clients cl WHERE c.Numero='$cardnum' and c.Tel='$telephone' and p.number=c.`Tel` and p.idclient=cl.ID";
                
                $return = $wpdb->get_results($sql);
                $JSONObj = new stdClass();
                if (empty($return)) {
    
                    $JSONObj->status = "notexist";
                    $JSONObj->data = [];
                    $JSONObj->error = "mismatched";
    
                } 
                else {
                    foreach ($return as $rowClient) {
                        $tab["idclient"] = $rowClient->ID;
                        $jwtobj = new JWT_Controller();
                        $token = $jwtobj->setsession($rowClient->ID, $rowClient->Numero);
    
                        if ($token !== false) {
                            $tab["token"] = $token;
                        } else {
                            $JSONObj = new stdClass();
                            $JSONObj->status = "fail";
                            $JSONObj->data = [];
                            $JSONObj->error = "erreur_serveur";
                            return ($JSONObj);
                        }
                    }
                    $JSONObj->status = "exist";
                    $JSONObj->data = $tab;
                    $JSONObj->error = [];
                }
                return ($JSONObj);

            }
    
    
          
        }
        else if ( (!empty($telephone)) || (!empty($cardnum))) 
        {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = "Données manquantes";
            return ($JSONObj);
        }
     

    }
    public function editclient($request)
    {

        global $wpdb;
        $firstname = $request['Firstname'];
        if ((!preg_match("/^[A-Za-z]+([\ A-Za-z]+)*/", $firstname))) {
            $errortab[] = "firstname";
        }

        $lastname = $request['Lastname'];
        if ((!preg_match("/^[A-Za-z]+([\ A-Za-z]+)*/", $lastname))) {
            $errortab[] = "lastname";
        }
        $cin = $request['Cin'];
        if ((!preg_match("/^[0-9]{8}$/", $cin))) {
            $errortab[] = "cin";
        }

        $birthday = $request['Birthday'];
        if ($birthday != date("d-m-Y", strtotime($birthday))) {
            $errortab[] = "birthday";
        }

        $date = date_create($birthday);
        $birthday = date_format($date, "Y-m-d");

        $email = $request['Email'];
        if (!(filter_var($email, FILTER_VALIDATE_EMAIL))) {
            $errortab[] = "email";
        }

        $city = $request['City'];
        if ((!preg_match("/^[a-zA-ZàâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]{3,}[a-zA-Z 0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]*$/", $city))) {
            $errortab[] = "city";
        }

        $address = $request['Address'];
        if ((!preg_match("/^[a-zA-Z0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]+[a-zA-Z 0-9àâéêèìôùûçÀÂÉÊÈÌÔÙÛÇ]+$/", $address))) {
            $errortab[] = "address";
        }
        $client_id = $request['ID'];
        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        } else {
            //update customer

            $res = $wpdb->update(
                'clients',
                array(
                    'Firstname' => $firstname,
                    'Lastname' => $lastname,
                    'Email' => $email,
                    'Birthday' => $birthday,
                    'City' => $city,
                    'Cin' => $cin,
                    'Adress' => $address,

                ),
                array('ID' => $client_id),
                array(
                    '%s',
                    '%s',
                    '%s',
                    '%s',
                    '%s',
                    '%s',
                    '%s',
                ),
                array('%d')
            );
            if ($res === false) {
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data = [];
                $JSONObj->error = ['erreur_serveur'];
                return ($JSONObj);
            } else {
                $JSONObj = new stdClass();
                $JSONObj->status = "updated";
                $JSONObj->data = "idclient: " . $client_id;
                $JSONObj->error = [];
                return ($JSONObj);
            }
        }

    }

    private function associatecard()
    {

        $key = substr(str_shuffle(str_repeat('0123456789', 10)), 0, 13);
        return $key;

    }
    private function check_phone_card_exist($telephone)
    {   
        global $wpdb;
        $sql = "SELECT * FROM card WHERE Tel='" . $telephone . "' ";
        $return = $wpdb->get_results($sql);
        if (empty($return)) {
           return false;
        }
        else
        {
            return true;
        }
       

    }
    private function check_client_exist($cin,$telephone)
    {   
        global $wpdb;
        //$sql = "SELECT * FROM clients WHERE cin='" . $cin . "' ";
        $sql = "SELECT * FROM clients c, phone p WHERE c.cin='" . $cin . "' AND p.idclient=c.ID AND p.number='" . $telephone . "' ";
        $return = $wpdb->get_results($sql);
       


        $JSONObj = new stdClass();
        if (empty($return)) {
            $sqlc = "SELECT * FROM clients c WHERE c.cin='" . $cin . "'";
            $returnc = $wpdb->get_results($sqlc);
            if (empty($returnc)) {
            $JSONObj->status = "notexist";
            $JSONObj->data = [];
            $JSONObj->error = [];
            }
            else
            {
                foreach ($returnc as $row) {
                    $id = $row->ID;
    
                }
                $JSONObj->status = "exist";
                $JSONObj->data = $id;
                $JSONObj->error = [];
            }

        } else {
            foreach ($return as $row) {
                $id = $row->ID;

            }
            $JSONObj->status = "exist";
            $JSONObj->data = $id;
            $JSONObj->error = [];
        }
        return ($JSONObj);

    }

    private function check_phone_exist($number)
    {
        global $wpdb;
        $sql = "SELECT * FROM phone WHERE `number`='" . $number . "' ";
        $return = $wpdb->get_results($sql);
        $JSONObj = new stdClass();
        if (empty($return)) {

            $JSONObj->status = "phonenotexist";
            $JSONObj->data = [];
            $JSONObj->error = [];

        } else {
            foreach ($return as $row) {
                $id = $row->ID;

            }
            $JSONObj->status = "phoneexist";
            $JSONObj->data = $id;
            $JSONObj->error = [];
        }
        return ($JSONObj);

    }


    private function check_paiement_meth($idpaiementmth)
    {
        global $wpdb;
        $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='capaiements' and p.ID=m.post_id and m.meta_key='capaiement_active' and m.meta_value='yes'and p.`ID`=$idpaiementmth ", 'ARRAY_N');

        if (empty($return)) {
            return false;
        } else {
            return true;
        }

    }
    private function check_choix_carte_meth($typeCardmth)
    {
        global $wpdb;
        $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='cacartes' and p.ID=m.post_id and m.meta_key='cacard_active' and m.meta_value='yes'and p.`ID`=$typeCardmth ", 'ARRAY_N');

        if (empty($return)) {
            return false;
        } else {
            return true;
        }

    }
    private function check_delivry_meth($iddelivmeth)
    {
        global $wpdb;
        $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='calivraisons' and p.ID=m.post_id and m.meta_key='calivraison_active' and m.meta_value='yes' and p.`ID`=$iddelivmeth ", 'ARRAY_N');
        if (empty($return)) {
            return false;
        } else {
            return true;
        }

    }

    private function check_produits($idproducts)
    {

        if (!isset($idproducts[0])) {
            return false;
        }

        global $wpdb;

        $products = explode(";", $idproducts);
        if (empty($products)) {
            return false;
        }

        for ($i = 0; $i < count($products); $i++) {
            $idpro = $products[$i];
            $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caproduits' and p.ID=m.post_id and m.meta_key='caproduit_active' and m.meta_value='yes' and p.`ID`=$idpro ", 'ARRAY_N');

            if (empty($return)) {
                return false;
            }

        }

        return true;

    }


    public function  updateprofileimage($request)
    {		
        
        $token = $request['token'];
        $jwtobj = new JWT_Controller();

        $decoded = $jwtobj->checksession($token);
        if ($decoded === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "log_in";
            return ($JSONObj);
        }


        $userid = $decoded->data->id;
        
        
        
        
        
           global $wpdb;
      
           $maxsizeimg = wp_max_upload_size();

            
            $file=$_FILES["upload_file"];

           
            
            if(($file['type'] != 'image/jpeg') && ($file['type'] != 'image/jpg') && ($file['type'] != 'image/png') )
            {
               
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "upload_image_file";
            return ($JSONObj);
                
            }
            else if(($file['size']>$maxsizeimg))
            {
                
                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data = array();
                $JSONObj->error = "image_too_big";
                return ($JSONObj);
                
                
            } else
            { 
                
                						
                $attachment_id = media_handle_upload("upload_file", 0,array());
                
                if (is_wp_error($attachment_id))
                {

                $JSONObj = new stdClass();
                $JSONObj->status = "fail";
                $JSONObj->data = array();
                $JSONObj->error = "erreur_serveur";
                return ($JSONObj);
                }
                else {
                                    
                    $res = $wpdb->get_results("START TRANSACTION");		
                    $imageurl=wp_get_attachment_image_src($attachment_id,'full')[0];

                    $table = 'clientimages';
                    $data = array('idclient' => $userid,'idimage' => $attachment_id);
                    $format = array();
                    $insertimage = $wpdb->insert($table, $data, $format);
                    
                    $updateuserimage=$wpdb->update('clients', array('imageid'=>$attachment_id), array('ID'=>$userid));

                    if ($insertimage === 1 && $updateuserimage !== fase) {
                    $res = $wpdb->get_results("COMMIT");
                    $JSONObj = new stdClass();
                    $JSONObj->status = "success";
                    $JSONObj->data = $imageurl;
                    $JSONObj->error = array();
                    return ($JSONObj);
                        
                    }else
                    {
                        $res = $wpdb->get_results("ROLLBACK");
                        $JSONObj = new stdClass();
                        $JSONObj->status = "fail";
                        $JSONObj->data = array();
                        $JSONObj->error = "erreur_serveur";
                        return ($JSONObj);

                    }
                                                                                

                    
                    
                    
                    
                }
                
                
                
                
            } 
            
            
            

    } 

}
