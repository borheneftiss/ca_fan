<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class ProjectEntity
{
	public function getProject($request)
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
       

        $JSONObj = new stdClass();
        $wpdb->get_results('SET CHARACTER SET utf8');
        $return = $wpdb->get_results("SELECT DISTINCT ID, p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caprojects' and p.ID=m.post_id and m.meta_key='caproject_active' and m.meta_value='yes' ");
       
        if(isset($return) && empty($return))
        {
            $JSONObj->status = "success";
            $JSONObj->data = "aucun projet est disponible";
            $JSONObj->error = [];
           
        }
        else if(isset($return) && !empty($return))
        {
            $JSONObj->status = "success";
            $JSONObj->data = $return;
            $JSONObj->error = [];
        } 
        else {
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = "erreur serveur";
        }
        return ($JSONObj); 
	}
}
?>