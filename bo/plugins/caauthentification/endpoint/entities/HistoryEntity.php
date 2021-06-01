<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';


class HistoryEntity
{
	public function getHistory($request)
    {   
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
        date_default_timezone_set('Africa/Tunis');
        
		global $wpdb;
		$JSONObj = new stdClass();
        $return = $wpdb->get_results("SELECT ID, gameid as game, score , date FROM `scores` WHERE idclient = $userid ");

        for ($i = 0; $i < count($return); $i++) {
           if( $return[$i]->game ==1)
           {
            $return[$i]->game = "Jeux de Quiz Ejam3ia";
            
           }
          
        }



      if ($wpdb->last_error=="") {
            $JSONObj->status = "success";
            $JSONObj->data = $return;
            $JSONObj->error = [];
        } else {
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = [];
        }
        if (empty($return)) {
          
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "histoire_non_trouvee";
        }
        return ($JSONObj);
    }
}