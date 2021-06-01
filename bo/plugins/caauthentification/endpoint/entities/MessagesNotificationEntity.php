<?php

class MessagesNotificationEntity
{
	 public function getMessageNotif($request)

     {
        global $wpdb;

        $JSONObj = new stdClass();
        $wpdb->get_results('SET CHARACTER SET utf8');
        $return = $wpdb->get_results("SELECT DISTINCT ID, p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.ID=m.post_id and p.post_type='camessagenotifs' and m.meta_key='camessagenotif_text'", 'ARRAY_N');
        if(isset($return) && !empty($return))
        {

            $data=array();
            
            for ($i=0;$i<count($return);$i++)
            {   
                $messageNotif=(object)[];
                $idmessageNotif[]=$return[$i][0];
                $messagetext[] =get_post_meta($return[$i][0], 'camessagenotif_text','true' );
                $titlemessage[] =$return[$i][1];
                $messageNotif->id=$idmessageNotif[$i];
                $messageNotif->title=$titlemessage[$i];
                $messageNotif->message=$messagetext[$i]; 
                array_push($data,$messageNotif);
            }
                 
        }
        if(isset($return) && empty($return))
        {
            $data= "aucun message disponible";
        }
       if ($wpdb->last_error=="") {
            $JSONObj->status = "success";
            $JSONObj->data = $data;
            $JSONObj->error = [];
        } else {
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = [];
        }
        return ($JSONObj); 
	}
    
  
}
?>