<?php


class WP_REST_Donation_Controller extends WP_REST_Controller{

    // intializing the name space and the resource name

    public function __construct()
    {
        $this->namespace = 'caauth';
        $this->meta = new WP_REST_User_Meta_Fields();

    }
    // registering the route

    public function register_routes()
    {
        register_rest_route($this->namespace,'/getDonationModes',array (
                                'methods'   => 'post',
                                'callback'  => array( $this, 'get_items' )
                            ));

        register_rest_route($this->namespace, '/saveDonation', array(
                                'methods' => 'post',
                                'callback' => array($this, 'save_Donation'),
                            ));

    }

    public function get_items($request)
    {

            $parameters = $request;
            $Donation=new DonationsEntity();
            $response=$Donation->getDonationMode($parameters);
            return $response;

    }
    public function save_Donation($request)
    {

            $parameters = $request;
            $Donation=new DonationsEntity();
            $response=$Donation->saveDonations($parameters);
            return $response;

    }












}

?>