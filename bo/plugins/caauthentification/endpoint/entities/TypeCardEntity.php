<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class TypeCardEntity
{
	 public function gettypeCard($request)

     {
        global $wpdb;

        $JSONObj = new stdClass();
        $wpdb->get_results('SET CHARACTER SET utf8');
        $return = $wpdb->get_results("SELECT DISTINCT ID, p.post_title FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='cacartes' and p.ID=m.post_id and m.meta_key='cacard_active' and m.meta_value='yes' ", 'ARRAY_N');
    
        if(isset($return) && !empty($return))
        {

            $data=array();
            
            for ($i=0;$i<count($return);$i++)
            {   
                $typeCard=(object)[];
                $idCard[]=$return[$i][0];
                $cardMontant[] =get_post_meta($return[$i][0], 'cacard_montant','true' );
                $cardDuree[] =get_post_meta($return[$i][0], 'cacard_duree','true' );
                $cardStatus[] =get_post_meta($return[$i][0], 'cacard_active','true' );
                $titleCard[] =$return[$i][1];
                $typeCard->id=$idCard[$i];
                $typeCard->title=$titleCard[$i];
                $typeCard->montant=$cardMontant[$i]; 
                $typeCard->duree=$cardDuree[$i]; 
                $typeCard->status=$cardStatus[$i]; 
                array_push($data,$typeCard);
            }
                 

        }
        if(isset($return) && empty($return))
        {
            $data= "aucun type card disponible";
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