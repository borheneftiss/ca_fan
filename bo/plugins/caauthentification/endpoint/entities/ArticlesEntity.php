<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class ArticlesEntity
{
	public function getArticles($request)
	{
        global $wpdb;
        $token = $request['token'];
        $tab = array();
        $data = array();

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
        $return = $wpdb->get_results(" SELECT DISTINCT p.ID, p.post_title , p.post_content, m.meta_value as img FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='post' and m.meta_key='_thumbnail_id' and p.ID=m.post_id ");
       
        if(isset($return) && empty($return))
        {
            $JSONObj->status = "success";
            $JSONObj->data = "aucun article trouvé !";
            $JSONObj->error = []; 
           
        }
        else if(isset($return) && !empty($return))
        {  
            foreach ($return as $Article) {
                $content =$Article->post_content;
                $tab["id_Article"] = $Article->ID;
                $tab["title_Article"] = $Article->post_title;
                $tab["content_Article"] = wp_strip_all_tags( $content ); 
                $tab["image_Article"] = wp_get_attachment_image_src($Article->img,'full')[0];
                array_push($data,$tab);
            }


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
}
?>