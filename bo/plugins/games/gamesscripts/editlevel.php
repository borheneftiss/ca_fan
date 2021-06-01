<?php

require_once('../../../../wp-config.php');


    $requestData= $_REQUEST;


    $JSONObj=new stdClass();
    $JSONObj-> result_type="echec";
    $JSONObj-> result_code="server_error";

    $id =$requestData['editid'];
    $game =$requestData['editgame'];
    $level =$requestData['editlevel'];
    $maxscore=$requestData['editmaxscore'];


        global $wpdb;

        $f= $wpdb->update(
        'gameslevels',
        array(
        'gameid'     => $game,
        'levelid' =>$level,
        'maxscore' => $maxscore ),
        array('id'=>$id)
        );

        if ($f) {
            $JSONObj-> result_type="success";
            $JSONObj-> result_code="Level successfully updated";
            exit(json_encode($JSONObj));
        } else {
            $JSONObj=new stdClass();
            $JSONObj-> result_type="echec";
            $JSONObj-> result_code="server_error";
            exit(json_encode($JSONObj));
        }
