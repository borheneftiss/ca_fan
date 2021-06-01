<?php
/**
 * Plugin Name:  REDISCRONS

 * Description:   REDISCRONS

 * Version:     1.0
 * Author:      Chifco
 * Text Domain: SMS

 * @package   SMS
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
 */

add_action('rediscron_hook', 'rediscronjob');

function rediscronjob()
{

    try {
        global $redis;
        global $wpdb;

        $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caquiz' and p.ID=m.post_id and m.meta_key='caquiz_datedebut' and STR_TO_DATE(meta_value, '%d-%m-%Y %H:%i:00')<= now()", 'ARRAY_N');

        $redis->set(listofquiz, json_encode($return));
        error_log('REDIS cron job executed');

    } catch (Exception $ex) {
        echo $ex->getMessage();
    }

}
