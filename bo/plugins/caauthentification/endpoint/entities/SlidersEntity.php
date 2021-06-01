<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';

class SlidersEntity {

  
    public function getSliders($request)
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
       
        $returnImages = $wpdb->get_results(" SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type = 'cahomeslider' and p.ID=m.post_id and m.meta_key ='caslider_homecourant' and m.meta_value='oui' ", 'ARRAY_N');

        $images=array();  
        $videos=array(); 
        $data=array();  
        $data2=array();  

        $ligne=(object)[];
     
        if (empty($returnImages)) {  
            
            $images[]= "aucune image trouvée !";
            $ligne->images=$images;
        }
        else {
            for ($i=0;$i<count($returnImages);$i++)
            {              
                $content= get_field("Caslider_home",$returnImages[$i][0]);    
            
                

                for ($j=0;$j<count($content);$j++)
                {  
                    $JSONcontent=new stdClass();
                    $JSONcontent->id=$content[$j]['Caslider_homeimage']['id'];
                    $JSONcontent->title=$content[$j]['Caslider_homeimage']['title'];
                    $JSONcontent->urlImage=$content[$j]['Caslider_homeimage']['url'];
                
                    $images[]=$JSONcontent;
                    $ligne->images=$images;
                }
               
            
            }
   
        }
        $returnVideos = $wpdb->get_results(" SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type = 'cavideoslider'  and p.ID=m.post_id and m.meta_key = 'Caslider_videocourant' and m.meta_value='oui' ", 'ARRAY_N');
    
        if (empty($returnVideos)) {  
            
            $videos[]= "aucun video trouvé !";
            $ligne->videos=$videos;
        }
        else {
            for ($k=0;$k<count($returnVideos);$k++)
            {         
                
                $contentVideo= get_field("Caslider_video",$returnVideos[$k][0]);    
            
                for ($h=0;$h<count($contentVideo);$h++)
                {   
                    $JSONcontentVd=new stdClass();
                    
                    $JSONcontentVd->urlVideo=$contentVideo[$h]['Caslider_videourl'];
                
                    $videos[]=$JSONcontentVd;
            
                    $ligne->videos=$videos;
                }
            
            
            }
        }
        array_push($data, $ligne);
   
        $JSONObj=new stdClass();  
        if (!empty($data))
        {		
            $JSONObj->result_type="success";
            $JSONObj->result_content=$data;
                return $JSONObj;
        }
        else
        {
                $JSONObj-> result_type="fail";
                $JSONObj-> result_content="erreur_serveur";
               
                return $JSONObj;
                
        } 
       
    }

}

?>