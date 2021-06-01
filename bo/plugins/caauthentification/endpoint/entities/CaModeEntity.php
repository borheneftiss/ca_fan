<?php


Class CaModeEntity
{
    public $data;
    public function __construct() 
    {
    }
    public function get_ca_modes2($parametres)
    {
        global $wpdb;
        $req="SELECT * FROM ca_modes GROUP BY type";
        $results = $wpdb->get_results($req);
        if(isset($results) && !empty($results))
        { 
            $data=array();
			
            foreach($results as $row)
            {
                $ligne=(object)[];
                $type=$row->type;
                $searchwithtype="SELECT m.ID,m.titre,m.status,p.ID AS icon_id FROM ca_modes m,wp_posts p WHERE p.ID=m.image AND type='".$type."'";
                $resultstype = $wpdb->get_results($searchwithtype);
                $ligne->type=$type;
                foreach($resultstype as $rowtype)
                {
                    $post_id=$rowtype->icon_id;
                    $meta_values = get_post_meta( $post_id, '_wp_attached_file','false' );
                    $rowtype->icon=site_url().''.UPLOAD_DIR.$meta_values;
                }
                $ligne->data=$resultstype;
				
                array_push($data,$ligne);

            }
            $json_result['status'] = 'success';
            $json_result['data'] = $data;
            $json_result['error'] = array();   
            return $json_result;
        }
        else
        {
            $json_result['status'] = 'success';
            $json_result['data'] = array();
            $json_result['error'] = array();   
            return $json_result;
        }
    }
    public function get_ca_modes($parametres)
    {
        global $wpdb;
        $return = $wpdb->get_results("SELECT DISTINCT ID FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='cacategory' and p.ID=m.post_id ", 'ARRAY_N');
        $sousCategory=array();     
        $tabcat=array();
        $resultstype=array();
             
        if(isset($return) && !empty($return))
        {   $data=array();
            $tab=array();
            for ($i=0;$i<count($return);$i++)
            {   $ligne=(object)[];
                
                $sousCategory[] =get_post_meta($return[$i][0], 'cacategory_sous_categories','true' );
                $typeCategory[] =get_post_meta($return[$i][0], 'type','true' );

                $ligne->nomcat = get_post_meta($return[$i][0], 'cacategory_nom','true' );  
                $iconCat = get_post_meta($return[$i][0], 'cacategory_icone','true' );
                $meta_values = get_post_meta( $iconCat, '_wp_attached_file','false' );
                $ligne->imgcat=site_url().''.UPLOAD_DIR.$meta_values;
                $ligne->type=$typeCategory[$i]; 
            
                $tab=array();
           
                for ($j=0;$j<count($sousCategory[$i]);$j++){
                    $dataa=(object)[];
               
                    $ID= $sousCategory[$i][$j];
                    $dataa->ID=$ID;
                    $searchwithtype = $wpdb->get_results("SELECT post_id as ID ,meta_value as icon_id  FROM `wp_postmeta` WHERE `post_id` = $ID and meta_key in ('capaiement_icone', 'calivraison_icone')", 'ARRAY_N');
                        $titre=get_the_title($ID);
                        $dataa->titre = $titre;
                        $dataa->status = 1;
                        $icon_id=$searchwithtype[0][1];
                        $dataa->icon_id=$icon_id;
                        $meta_values = get_post_meta( $icon_id, '_wp_attached_file','false' );
                        $dataa->icon=site_url().''.UPLOAD_DIR.$meta_values;
  
                    array_push($tab,$dataa);
                    $ligne->data=$tab;
                
                } 
    
                array_push($data,$ligne); 
        } 
                   
            $json_result['status'] = 'success';
           
            $json_result['data'] = $data;
            $json_result['error'] = array();   
            return $json_result;
        }
        else
        {
            $json_result['status'] = 'success';
            $json_result['data'] = array();
            $json_result['error'] = array();   
            return $json_result;
        } 
      
    }

    
}