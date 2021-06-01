<?php

require_once('../../../../wp-config.php');


        global $wpdb;

        $result = $wpdb->get_results("SELECT ID,titre FROM `games`");

        if (!empty($result)) {
            $JSONObj-> result_type="success";
            $JSONObj-> result_code="games_trouve";
            $JSONObj-> result_content=$result;
            exit(json_encode($JSONObj));
        } else {
            $JSONObj=new stdClass();
            $JSONObj-> result_type="echec";
            $JSONObj-> result_code="server_error";
            exit(json_encode($JSONObj));
        }
