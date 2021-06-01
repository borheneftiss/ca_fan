<?php

class FirebaseEntity
{
    public function send($request) {
        global $wpdb;

        $phoneclient = $request['phoneclient'];
        if ((!preg_match("/^[0-9]{8}$/", $phoneclient))) {
            $errortab[] = "phoneclient";
        }
        if (!empty($errortab)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = [];
            $JSONObj->error = $errortab;
            return ($JSONObj);
        } else {
            $return = $wpdb->get_results("SELECT tokenNotifUser FROM client_notification WHERE `phoneclient`='" . $phoneclient . "'");
            $result_one = array();
            foreach ($return as $result) {
                $result_one[] = $result->tokenNotifUser;
              }
            $registration_ids=$result_one;  
            $numTokens = count($registration_ids);
            if($numTokens == 1)   {
                $fields = array(
                    'to' => $registration_ids[0],
                    'notification' => array('title' => 'Firebase to one user', 'body' => "Firebase message from backend"),
                );
            } else if($numTokens > 1){
                $fields = array(
                    'registration_ids' => $registration_ids,
                    'notification' => array('title' => 'Firebase to More than one user', 'body' => "Firebase message from backend"),
                );
            }
            return $this->sendPushNotification($fields);
        }

    }    
    /*
    * This function will make the actuall curl request to firebase server
    * and then the message is sent 
    */
    private function sendPushNotification($fields) {      
        //importing the constant files
        $senderID='AIzaSyArSvMd2VDqwKiWPLEFlVZcfwa9Bq6Ft4I';
        //firebase server url to send the curl request
        $url = 'https://fcm.googleapis.com/fcm/send';
 
        //building headers for the request
        $headers = array(
            'Content-Type: application/json',
            'Authorization:key='.'AAAAJlNkP7c:APA91bEazt8asegpVNlu0Y7hBqow7DSYq7lV9B74S6zvo3D7Wfg2CdeNY_S2pNvDR0ftGjAvzRE_3ET2MziO_tlNeDHgxMphmQy6c6WrGnqAx7_H9a7hOQuKg6NpN2cATe30JGr-BNIT'
        );
 
        //Initializing curl to open a connection
        $ch = curl_init();
 
        //Setting the curl url
        curl_setopt($ch, CURLOPT_URL, $url);
        
        //setting the method as post
        curl_setopt($ch, CURLOPT_POST, true);
 
        //adding headers 
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 
        //disabling ssl support
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        
        //adding the fields in json format 
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
                // print_r($ch);
        //finally executing the curl request 
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
 
        //Now close the connection
        curl_close($ch);
 
        //and return the result 
        return $result;
    }
}
?>