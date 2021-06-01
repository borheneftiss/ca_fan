<?php

require_once('../../../../wp-config.php');


    $requestData= $_REQUEST;


    $JSONObj=new stdClass();
    $JSONObj-> result_type="echec";
    $JSONObj-> result_code="server_error";

    $game =$requestData['game'];
    $level =$requestData['level'];
    $maxscore=$requestData['maxscore'];


        global $wpdb;

        $f= $wpdb->insert(
        'gameslevels',
        array(
        'gameid'     => $game,
        'levelid' =>$level,
        'maxscore' => $maxscore )
        );

        if ($f) {
            $JSONObj-> result_type="success";
            $JSONObj-> result_code="Level successfully added";
            exit(json_encode($JSONObj));
        } else {
            $JSONObj=new stdClass();
            $JSONObj-> result_type="echec";
            $JSONObj-> result_code="server_error";
            exit(json_encode($JSONObj));
        }
