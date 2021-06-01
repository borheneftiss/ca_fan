<?php

    require_once('../../../../wp-config.php');




  $requestData= $_REQUEST;

  global $wpdb;

$res= $wpdb->get_results('SELECT COUNT(*) as total,DATE_FORMAT(`date_creation`, "%d-%m-%Y") as `date` FROM `scores` WHERE YEARWEEK(`date_creation`, 1) = YEARWEEK(CURDATE(), 1) GROUP by DATE_FORMAT(`date_creation`, "%d-%m-%Y")');


            $tabcount=array();
            $tabdate=array();
            //exit(json_encode($wpdb));
              if (!empty($res)) {
                  foreach ($res as $value) {
                      $tabcount[]= $value->total;
                      $tabdate[]=$value->date;
                  }


                  $JSONObj-> result_type="success";
                  $JSONObj-> result_code="found";
                  $JSONObj-> result_content_total=$tabcount;
                  $JSONObj-> result_content_date=$tabdate;

                  exit(json_encode($JSONObj));
              } else {
                  $JSONObj=new stdClass();
                  $JSONObj-> result_type="echec";
                  $JSONObj-> result_code="Server error";
                  exit(json_encode($JSONObj));
              }
