<?php

class PartenairesEntity
{
	public function getPartenaires($request)
	{ 
		global $wpdb;
        $JSONObj = new stdClass();

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
    
	    $return = $wpdb->get_results("SELECT p.ID, p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='capartenaires' and p.ID=m.post_id and m.meta_key='capartenaire_active' and m.meta_value='yes' ");
       
        if(isset($return) && empty($return))
        {
            $data= "aucun cadeau est disponible ";
            $JSONObj->status = "success";
            $JSONObj->data = $data;
            $JSONObj->error = [];
        }
        else if(isset($return) && !empty($return))
        {
            foreach ($return as $Partner) {
               
                $tab["ID"] = $Partner->ID;
                $tab["title"] = $Partner->post_title;
                $iconPartner = get_post_meta($Partner->ID, 'capartenaire_logo','true' );
                $meta_values = get_post_meta( $iconPartner, '_wp_attached_file','false' );
                $tab["logo"] = site_url().''.UPLOAD_DIR.$meta_values;
                array_push($data,$tab);
            }

            $JSONObj->status = "success";
            $JSONObj->data = $data;
            $JSONObj->error = [];

        } 
        else 
        {
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = [];
        }
        return ($JSONObj); 
	}
}
?>