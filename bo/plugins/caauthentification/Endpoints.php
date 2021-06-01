<?php

require_once 'entities/SmsEntity.php';
require_once 'entities/CaModeEntity.php';
require_once 'entities/ClientEntity.php';
require_once 'entities/ProduitEntity.php';
require_once 'entities/HistoryEntity.php';
require_once 'entities/TestEntity.php';
require_once 'entities/TypeCardEntity.php';

if ( ! class_exists( 'WP_REST_Sms_Controller' ) ) {
    require_once dirname(__FILE__) . '/Sms.php';
}
if ( ! class_exists( 'WP_REST_CaMode_Controller' ) ) {
    require_once dirname(__FILE__) . '/CaMode.php';
}
if ( ! class_exists( 'WP_REST_Client_Controller' ) ) {
    require_once dirname(__FILE__) . '/Client.php';
}

if ( ! class_exists( 'WP_REST_Produit_Controller' ) ) {
    require_once dirname(__FILE__) . '/Produit.php';
}

if ( ! class_exists( 'WP_REST_History_Controller' ) ) {
    require_once dirname(__FILE__) . '/History.php';
}

if ( ! class_exists( 'WP_REST_Test_Controller' ) ) {
    require_once dirname(__FILE__) . '/Test.php';
}

if ( ! class_exists( 'WP_REST_TypeCard_Controller' ) ) {
    require_once dirname(__FILE__) . '/TypeCard.php';
}

add_action( 'rest_api_init', 'prefix_register_my_rest_routes', 0 );
add_action( 'rest_api_init', function() {
    
	remove_filter( 'rest_pre_serve_request', 'rest_send_cors_headers' );
	add_filter( 'rest_pre_serve_request', function( $value ) {
		header( 'Access-Control-Allow-Origin: *' );
		header( 'Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE' );
		header( 'Access-Control-Allow-Credentials: true' );

		return $value;
		
	});
}, 15 );

function prefix_register_my_rest_routes() {
    
    $controller_Sms = new WP_REST_Sms_Controller;
    $controller_Sms->register_routes();

    $controller_CaMode = new WP_REST_CaMode_Controller;
    $controller_CaMode->register_routes();

    $controller_Client = new WP_REST_Client_Controller;
    $controller_Client->register_routes();

    $controller_Produit = new WP_REST_Produit_Controller;
    $controller_Produit->register_routes();

    $controller_History = new WP_REST_History_Controller;
    $controller_History->register_routes();

    $controller_Test = new WP_REST_Test_Controller;
    $controller_Test->register_routes();
    
    $controller_TypeCard = new WP_REST_TypeCard_Controller;
    $controller_TypeCard->register_routes();

}


?>