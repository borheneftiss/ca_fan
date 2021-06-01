<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';


class ContactEntity
{
	public function Contactsend($request)
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

        global $wpdb;
		$JSONObj = new stdClass();
        $email= $wpdb->get_results("SELECT email FROM `clients` where id = $userid ", 'ARRAY_N');
        date_default_timezone_set('Africa/Tunis');
        
        $emailAdr = $email[0][0];        

        add_filter('wp_mail_content_type',create_function('', 'return "text/html"; '));   
        
        $to = 'amal.elamri@chifco.com';
        $objet = $request['objet'];
        $message = $request['message'];
        $from = 'From: ' . $emailAdr . '' ;
      
       
       
        $EmailContent = $from . " </br>  ".$message;
       // $headers = array('Content-Type: text/html; charset=UTF-8');
        
       $f= wp_mail($to, $objet, $EmailContent, $headers );
       $JSONObj = new stdClass();   
            if ($f) {
                $JSONObj->status = "success";
                $JSONObj->data = "your email has been sent.";
                $JSONObj->error = [];
                
            } else {
                $JSONObj->status = "fail";
                $JSONObj->data = array();
                $JSONObj->error = "email not sent.";
            }
            return ($JSONObj);
    }
}