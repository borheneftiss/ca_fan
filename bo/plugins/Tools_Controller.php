<?php

class Tools_Controller
{

    // intializing the name space and the resource name

    public function __construct()
    {

    }

    public function getscore($card)
    {

        global $wpdb;
        $return = $wpdb->get_results("SELECT COALESCE(sum(`score`),0) FROM `scores` where `card`=$card ", 'ARRAY_N');
        return $return[0][0];

    }

}
