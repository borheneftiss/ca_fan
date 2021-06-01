<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class GiftEntity
{
	public function getGift($request)
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
        $wpdb->get_results('SET CHARACTER SET utf8');
        $return = $wpdb->get_results("SELECT DISTINCT ID, p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='cagifts' and p.ID=m.post_id and m.meta_key='cacadeau_active' and m.meta_value='yes' ", 'ARRAY_N');
    
        if(isset($return) && !empty($return))
        {

            $data=array();
            
            for ($i=0;$i<count($return);$i++)
            {   
                $gift=(object)[];

                $giftPoints[] =get_post_meta($return[$i][0], 'cacadeau_points','true' );
                $titleGift[] =$return[$i][1];
                $iconGift = get_post_meta($return[$i][0], 'cacadeau_icone','true' );
                $meta_values = get_post_meta( $iconGift, '_wp_attached_file','false' );

                $gift->Gift_title=$titleGift[$i];
                $gift->icon=site_url().''.UPLOAD_DIR.$meta_values;
                $gift->points=$giftPoints[$i]; 
                array_push($data,$gift);
            }
                 

        }
        if(isset($return) && empty($return))
        {
            $data= "aucun cadeau est disponible ";
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