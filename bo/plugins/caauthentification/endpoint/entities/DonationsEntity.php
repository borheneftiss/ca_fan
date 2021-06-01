<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class DonationsEntity
{
	public function getDonationMode($request)
	{ 
        global $wpdb;
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

        $JSONObj = new stdClass();

        $return = $wpdb->get_results("SELECT p.ID,p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='capaiements' and p.ID=m.post_id and m.meta_key='capaiement_active' and m.meta_value='yes'", 'ARRAY_N');
        $data=array();
    
        for ($i=0;$i<count($return);$i++)
        {   
            $paiementMode[$i] = get_post_meta($return[$i][0], 'capaiement_finalité','true' );
         
        } 
     
       for ($h=0;$h<count($paiementMode);$h++)
       { 
        if (in_array("donation", $paiementMode[$h])) {
            $mode=(object)[];

                    $paimentID[] = $return[$h][0];
                    $paiment_mode_Tilte[] =  $return[$h][1];

                    $mode->paimentID=$paimentID[$h];
                    $mode->paiment_mode_Tilte=$paiment_mode_Tilte[$h]; 
                    array_push($data,$mode); 
            }
        }

        if(isset($data) && empty($data))
        {
            $JSONObj->status = "fail";
            $JSONObj->data = "aucun mode de paiement pour un don est disponible";
            $JSONObj->error = [];
           
        }
        else if(isset($data) && !empty($data))
        {
            $JSONObj->status = "success";
            $JSONObj->data = $data;
            $JSONObj->error = [];
        } 
        else {
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = "erreur serveur";
        }
        return ($JSONObj);  
    }
    
    public function saveDonations($request)
	{ 
		global $wpdb;
        $JSONObj = new stdClass();
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

        $idpaiementmode = $request['idpaiementmode'];
        if ((!preg_match("/^[0-9]+$/", $idpaiementmode)) || !$this->check_paiement_meth($idpaiementmode)) {
            $errortab[] = "empty_idpaiementmode";
        }

        $montant = $request['montant'];
        if ((!preg_match("/^[0-9]+$/", $montant)) ) {
            $errortab[] = "empty_montant";
        }

        $projectType = $request['projectType']; 
        if ((!preg_match("/^[0-9]+$/", $projectType)) || !$this->check_project_meth($projectType)) {
            $errortab[] = "empty_projectType";
        }
      
        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        }

        $table = 'donation';
        $data = array('idclient' => $userid, 'idpaiementmode' => $idpaiementmode , 'montant' => $montant, 'projectType' => $projectType);
      
        $format = array();
        $insertdonation = $wpdb->insert($table, $data, $format);

        if ($insertdonation === false) {

            $res = $wpdb->get_results("ROLLBACK");
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = ['erreur_serveur'];
            return ($JSONObj);

        }
        else {
            $idDonation = $wpdb->insert_id;
            $JSONc = new stdClass();
            $JSONc->idDonation = $idDonation;
            $res = $wpdb->get_results("COMMIT");
            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = $JSONc;
            $JSONObj->error = [];
            return ($JSONObj);
        }
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
    private function check_project_meth($projectType)
    {   
        global $wpdb;
        if ( $projectType === "0")
        {  
            return true;
        }
        else   
        {  
            $return = $wpdb->get_results("SELECT DISTINCT ID FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caprojects' and p.ID=m.post_id and m.meta_key='caproject_active' and m.meta_value='yes' AND p.ID=$projectType ", 'ARRAY_N');

                if (empty($return)) {
                    return false;
                } else {
                    return true;
                }
        }
    }
}
?>