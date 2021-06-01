<?php


class WP_REST_Gift_Controller extends WP_REST_Controller{

    // intializing the name space and the resource name

    public function __construct()
    {
        $this->namespace = 'caauth';
        $this->meta = new WP_REST_User_Meta_Fields();

    }
    // registering the route

    public function register_routes()
    {
        register_rest_route($this->namespace,'/getgifts',array (
                                'methods'   => 'post',
                                'callback'  => array( $this, 'get_items' )
                            ));

    }

    public function get_items($request)
    {

            $parameters = $request;
            $gifts=new GiftEntity();
            $response=$gifts->getGift($parameters);
            return $response;

    }












}

?>