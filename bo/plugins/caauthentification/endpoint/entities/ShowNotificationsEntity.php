<?php

class ShowNotificationEntity
{
	 public function getShowNotif($request)
     {
        global $wpdb;

        $phoneclient = $request['phoneclient'];
        if ((!preg_match("/^[0-9]{8}$/", $phoneclient))) {
            $errortab[] = "phoneclient";
        }

        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        } else {
            $JSONObj = new stdClass();
            $wpdb->get_results('SET CHARACTER SET utf8');
            $return = $wpdb->get_results("SELECT DISTINCT s.id,p.post_title,m.meta_value,s.phoneclient,s.status,s.date FROM wp_posts p, show_notifications s , wp_postmeta m WHERE p.ID=s.message_id and p.ID=m.post_id and p.post_status='publish' and p.post_type='camessagenotifs' and m.meta_key='camessagenotif_text' and s.phoneclient='" . $phoneclient . "'", 'ARRAY_N');
            $return_mesg_non_lu = $wpdb->get_results("SELECT COUNT(*) FROM show_notifications WHERE status='non lu' and phoneclient='" . $phoneclient . "'", 'ARRAY_N');
            if(isset($return) && !empty($return))
            {
                $data=array();
                for ($i=0;$i<count($return);$i++)
                {   
                    $showNotif=(object)[];
                    $idshowNotif[]=$return[$i][0];
                    $titlemessage[] =$return[$i][1];
                    $textmessage[] =$return[$i][2];
                    $phoneclt[] =$return[$i][3];
                    $statusmessage[] =$return[$i][4];
                    $datemessage[] =$return[$i][5];
                    $showNotif->id=$idshowNotif[$i];
                    $showNotif->title_message=$titlemessage[$i];
                    $showNotif->text_message=$textmessage[$i];
                    $showNotif->phone=$phoneclt[$i];
                    $showNotif->status=$statusmessage[$i];
                    $showNotif->date=$datemessage[$i];
                    array_push($data,$showNotif);    
                }
                     
            }
            if(isset($return) && empty($return))
            {
                $data= "aucun message disponible";
            }
           if ($wpdb->last_error=="") {
                $JSONObj->status = "success";
                $JSONObj->data = $data;
                $JSONObj->nombre_message_non_lu = $return_mesg_non_lu[0];
                $JSONObj->error = [];
            } else {
                $JSONObj->status = "fail";
                $JSONObj->data = [];
                $JSONObj->error = [];
            }
            return ($JSONObj); 
        }

	}
    
  
}
?>