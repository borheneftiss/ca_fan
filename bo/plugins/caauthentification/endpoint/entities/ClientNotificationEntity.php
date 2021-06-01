<?php

class ClientNotificationEntity
{
	public function registerClientNotification($request)
	{
		
      global $wpdb;

        $tokenNotifUser = $request['tokenNotifUser']; 
        if (empty($request['tokenNotifUser'])) {
            $errortab[] = "tokenNotifUser";
        }

        $phoneclient = $request['phoneclient'];
        if ((!preg_match("/^[0-9]{8}$/", $phoneclient))) {
            $errortab[] = "phoneclient";
        }

        $existTokenClientNotif = $this->check_token_client_notif_exist($tokenNotifUser);
        if (!$existTokenClientNotif) {
            $errortab[] = "token_notif_user_exist";
        }

        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        } 
          else {
            //save client_notif
            $table = 'client_notification';
            $data = array('tokenNotifUser' => $tokenNotifUser, 'phoneclient' => $phoneclient);
            $format = array();
            if($existTokenClientNotif->status == "tokenNotifUsernotexist"){
                $insertnotifclient = $wpdb->insert($table, $data, $format);
                if ($wpdb->last_error!='') {
                    $JSONObj = new stdClass();
                    $JSONObj->status = "fail";
                    $JSONObj->data =[];
                    $JSONObj->error = ['erreur_serveur'].$wpdb->last_error;
                    return ($JSONObj);  
                }
                else {
                    $clientNotif_id = $wpdb->insert_id;
                    $JSONObj = new stdClass();
                    $JSONObj->status = "success";
                    $JSONObj->clientNotif_id = $clientNotif_id;
                    $JSONObj->error = [];
                    return ($JSONObj);  
                }
            } 
            else {
                $return = $wpdb->get_results(" SELECT ID FROM client_notification WHERE `tokenNotifUser`='" . $tokenNotifUser . "'");
                $JSONObj = new stdClass();
                foreach ($return as $row) {
                    $id = $row->ID;

                }
                $JSONObj->status = "ce token existe déja";
                $JSONObj->user_token_notif_id = $id;
                $JSONObj->error = [];
                return ($JSONObj);
            }
          }


    }
    

    private function check_token_client_notif_exist($tokenNotifUser)
    {
        global $wpdb;
        $sql = "SELECT * FROM client_notification WHERE `tokenNotifUser`='" . $tokenNotifUser . "'";
        $return = $wpdb->get_results($sql);
        $JSONObj = new stdClass();
        if (empty($return)) {

            $JSONObj->status = "tokenNotifUsernotexist";
            $JSONObj->data = [];
            $JSONObj->error = [];

        } else {
            foreach ($return as $row) {
                $id = $row->ID;

            }
            $JSONObj->status = "tokenNotifUserexist";
            $JSONObj->data = $id;
            $JSONObj->error = [];
        }
        return ($JSONObj);

    }

}
?>