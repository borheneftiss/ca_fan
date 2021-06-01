<?php

require_once('../../../../wp-config.php');


    $requestData= $_REQUEST;


    $JSONObj=new stdClass();
    $JSONObj-> result_type="echec";
    $JSONObj-> result_code="server_error";

    $id =$requestData['gameid'];


        global $wpdb;
        $f=$wpdb->delete('games', array('ID'=>$id));
        if ($f!==false) {
            $JSONObj-> result_type="success";
            $JSONObj-> result_code="Game successfully deleted";
            exit(json_encode($JSONObj));
        } else {
            $JSONObj=new stdClass();
            $JSONObj-> result_type="echec";
            $JSONObj-> result_code="server_error";
            exit(json_encode($JSONObj));
        }
