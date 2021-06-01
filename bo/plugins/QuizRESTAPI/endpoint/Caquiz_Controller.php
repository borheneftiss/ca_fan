<?php

/**
 * Access CaMode
 */
class Caquiz_Controller extends WP_REST_Controller
{

    public function __construct()
    {
        $this->namespace = 'quiz';
        $this->meta = new WP_REST_User_Meta_Fields();
    }

    /**
     * Register the routes for the objects of the controller.
     */
    public function register_routes()
    {
        /**
         * Route web service verification ca user .
         */
        register_rest_route($this->namespace, '/info', array(

            array(
                'methods' => 'POST',
                'callback' => array($this, 'getquizcontent'),
            ),

        ));

        register_rest_route($this->namespace, '/view', array(

            array(
                'methods' => 'POST',
                'callback' => array($this, 'getallquiz'),
            ),

        ));

        register_rest_route($this->namespace, '/answer', array(

            array(
                'methods' => 'POST',
                'callback' => array($this, 'getquizanswer'),
            ),

        ));

        register_rest_route($this->namespace, '/save', array(

            array(
                'methods' => 'POST',
                'callback' => array($this, 'savequiz'),
            ),

        ));

    }

    public function getquizcontent($request)
    {
        $quiz = new CaquizEntity();
        $quizres = $quiz->quizdata($request);
        return $quizres;
    }

    public function getallquiz($request)
    {
        $quiz = new CaquizEntity();
        $quizres = $quiz->getallquiz($request);
        return $quizres;
    }

    public function getquizanswer($request)
    {
        $quiz = new CaquizEntity();
        $quizres = $quiz->quizdataresponse($request);
        return $quizres;
    }

    public function savequiz($request)
    {
        $quiz = new CaquizEntity();
        $quizres = $quiz->savequizanswer($request);
        return $quizres;
    }
}
