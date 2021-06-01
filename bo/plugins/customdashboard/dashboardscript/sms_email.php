<?php

    require_once('../../../../wp-config.php');




    $requestData= $_REQUEST;








            global $wpdb;

            $smss= $wpdb->get_results("SELECT COUNT(*) FROM `history` WHERE `open_from`='sms' and  YEARWEEK(`date`, 1) = YEARWEEK(CURDATE(), 1)", 'ARRAY_N');
            $emails= $wpdb->get_results("SELECT COUNT(*) FROM `history` WHERE `open_from`='email' and  YEARWEEK(`date`, 1) = YEARWEEK(CURDATE(), 1)", 'ARRAY_N');


            $tab=array();
            if ($smss !==false && $emails!==false) {
                $tab[]=$smss[0][0];
                $tab[]=$emails[0][0];

                $JSONObj-> result_type="success";
                $JSONObj-> result_code="found";
                $JSONObj-> result_content=$tab;

                exit(json_encode($JSONObj));
            } else {
                $JSONObj=new stdClass();
                $JSONObj-> result_type="echec";
                $JSONObj-> result_code="Server error";
                exit(json_encode($JSONObj));
            }
