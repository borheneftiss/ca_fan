<?php

require_once 'entities/CaquizEntity.php';
require_once dirname(__FILE__) . '/Caquiz_Controller.php';

function quiz_routes()
{

    $controller_quiz = new Caquiz_Controller;
    $controller_quiz->register_routes();

}
add_action('rest_api_init', 'quiz_routes', 0);
