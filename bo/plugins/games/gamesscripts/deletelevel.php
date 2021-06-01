<?php

require_once('../../../../wp-config.php');


    $requestData= $_REQUEST;


    $JSONObj=new stdClass();
    $JSONObj-> result_type="echec";
    $JSONObj-> result_code="server_error";

    $id =$requestData['deleteid'];


        global $wpdb;
        $f=$wpdb->delete('gameslevels', array('id'=>$id));
        if ($f!==false) {
            $JSONObj-> result_type="success";
            $JSONObj-> result_code="Level successfully deleted";
            exit(json_encode($JSONObj));
        } else {
            $JSONObj=new stdClass();
            $JSONObj-> result_type="echec";
            $JSONObj-> result_code="server_error";
            exit(json_encode($JSONObj));
        }
