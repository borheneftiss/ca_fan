<?php

require_once 'entities/SmsEntity.php';
require_once 'entities/CaModeEntity.php';
require_once 'entities/ClientEntity.php';
require_once 'entities/ProduitEntity.php';
require_once 'entities/ProjectEntity.php';
require_once 'entities/GiftEntity.php';
require_once 'entities/HistoryEntity.php';
require_once 'entities/ContactEntity.php';
require_once 'entities/TypeCardEntity.php';
require_once 'entities/DonationsEntity.php';
require_once 'entities/ArticlesEntity.php';
require_once 'entities/PartenairesEntity.php';
require_once 'entities/SlidersEntity.php';
require_once 'entities/ClientNotificationEntity.php';
require_once 'entities/FirebaseEntity.php';
require_once 'entities/MessagesNotificationEntity.php';
require_once 'entities/ShowNotificationsEntity.php';


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
if ( ! class_exists( 'WP_REST_Project_Controller' ) ) {
    require_once dirname(__FILE__) . '/Project.php';
}

if ( ! class_exists( 'WP_REST_Gift_Controller' ) ) {
    require_once dirname(__FILE__) . '/Gift.php';
}

if ( ! class_exists( 'WP_REST_History_Controller' ) ) {
    require_once dirname(__FILE__) . '/History.php';
}
if ( ! class_exists( 'WP_REST_Contact_Controller' ) ) {
    require_once dirname(__FILE__) . '/Contact.php';
}

if ( ! class_exists( 'WP_REST_TypeCard_Controller' ) ) {
    require_once dirname(__FILE__) . '/TypeCard.php';
}
if ( ! class_exists( 'WP_REST_Donation_Controller' ) ) {
    require_once dirname(__FILE__) . '/Donations.php';
}
if ( ! class_exists( 'WP_REST_Articles_Controller' ) ) {
    require_once dirname(__FILE__) . '/Articles.php';
}
if ( ! class_exists( 'WP_REST_Partenaires_Controller' ) ) {
    require_once dirname(__FILE__) . '/Partenaires.php';
}
if ( ! class_exists( 'WP_REST_Sliders_Controller' ) ) {
    require_once dirname(__FILE__) . '/Sliders.php';
}

if ( ! class_exists( 'WP_REST_ClientNotification_Controller' ) ) {
    require_once dirname(__FILE__) . '/ClientNotification.php';
}

if ( ! class_exists( 'WP_REST_Firebase_Controller' ) ) {
    require_once dirname(__FILE__) . '/Firebase.php';
}
if ( ! class_exists( 'WP_REST_MessagesNotification_Controller' ) ) {
    require_once dirname(__FILE__) . '/MessagesNotification.php';
}
if ( ! class_exists( 'WP_REST_ShowNotifications_Controller' ) ) {
    require_once dirname(__FILE__) . '/ShowNotifications.php';
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

    $controller_Gift = new WP_REST_Gift_Controller;
    $controller_Gift->register_routes();

    $controller_Produit = new WP_REST_Produit_Controller;
    $controller_Produit->register_routes();

    $controller_Project = new WP_REST_Project_Controller;
    $controller_Project->register_routes();

    $controller_History = new WP_REST_History_Controller;
    $controller_History->register_routes();

    $controller_Contact = new WP_REST_Contact_Controller;
    $controller_Contact->register_routes();

    $controller_TypeCard = new WP_REST_TypeCard_Controller;
    $controller_TypeCard->register_routes();

    $controller_Articles = new WP_REST_Articles_Controller;
    $controller_Articles->register_routes();
    
    $controller_Donations = new WP_REST_Donation_Controller;
    $controller_Donations->register_routes();

    $controller_Partenaires = new WP_REST_Partenaires_Controller;
    $controller_Partenaires->register_routes();

    $controller_Sliders = new WP_REST_Sliders_Controller;
    $controller_Sliders->register_routes();
    
    $controller_ClientNotification = new WP_REST_ClientNotification_Controller;
    $controller_ClientNotification->register_routes();

    $controller_Firebase = new WP_REST_Firebase_Controller;
    $controller_Firebase->register_routes();

    $controller_MessageNotif = new WP_REST_MessagesNotification_Controller;
    $controller_MessageNotif->register_routes();

    $controller_ShowNotif = new WP_REST_ShowNotifications_Controller;
    $controller_ShowNotif->register_routes();
}


?>