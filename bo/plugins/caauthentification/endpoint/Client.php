<?php

class WP_REST_Client_Controller extends WP_REST_Controller
{

    // intializing the name space and the resource name

    public function __construct()
    {
        $this->namespace = 'caauth';
        $this->meta = new WP_REST_User_Meta_Fields();

    }
    // registering the route

    public function register_routes()
    {
        register_rest_route($this->namespace, '/register', array(
            'methods' => 'post',
            'callback' => array($this, 'userregister'),
        ));
        register_rest_route($this->namespace, '/authentification', array(
            'methods' => 'post',
            'callback' => array($this, 'userauth'),
        ));
        register_rest_route($this->namespace, '/editprofil', array(
            'methods' => 'post',
            'callback' => array($this, 'useredit'),
        ));

        register_rest_route($this->namespace, '/updateimage', array(
            'methods' => 'post',
            'callback' => array($this, 'updateimage'),
        ));
    }

    public function userregister($request)
    {

        $parameters = $request;
        $registration = new ClientEntity();
        $response = $registration->registerclient($parameters);
        return $response;

    }

    public function userauth($request)
    {

        $parameters = $request;
        $authentification = new ClientEntity();
        $response = $authentification->authenticateclient($parameters);
        return $response;

    }

    public function useredit($request)
    {

        $parameters = $request;
        $editprofil = new ClientEntity();
        $response = $editprofil->editclient($parameters);
        return $response;

    }

    public function updateimage($request)
    {

        $parameters = $request;
        $editimage = new ClientEntity();
        $response = $editimage->updateprofileimage($parameters);
        return $response;

    }

}
