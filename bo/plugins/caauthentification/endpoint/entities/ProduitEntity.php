<?php

class ProduitEntity
{
	public function getproducts($parametres)
	{
		global $wpdb;
        $JSONObj = new stdClass();
    
		$return = $wpdb->get_results("SELECT p.ID,p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caproduits' and p.ID=m.post_id and m.meta_key='caproduit_active' and m.meta_value='yes' ");

        if ($wpdb->last_error=="") {
            $JSONObj->status = "success";
            $JSONObj->data = $return;
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