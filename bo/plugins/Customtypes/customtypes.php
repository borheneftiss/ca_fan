<?php
/**
 * Plugin Name: customtypes

 * Description:  customtypes
 * Version:     1.0
 * Author:      Chifco
 * Text Domain: customtypes


 * @package   Go
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
 */

function initcustomtypes()
{

    // Create poduit post type
    $labels = array(
        'name' => __('Produits', 'caproduct'),
        'singular_name' => __('Advanced Custom Fields', 'caproduct'),
        'add_new' => __('Ajouter', 'caproduct'),
        'add_new_item' => __('Ajouter Produit', 'caproduct'),
        'edit_item' => __('Modifier Produit', 'caproduct'),
        'new_item' => __('Nouveau Produit', 'caproduct'),
        'view_item' => __('Voir Produit', 'caproduct'),
        'search_items' => __('Rechercher Produit', 'caproduct'),
        'not_found' => __('Pas de Produit', 'caproduct'),
        'not_found_in_trash' => __('Pas de Produit', 'caproduct'),
    );

    register_post_type('caproduits', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "caproduits",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

// Create deliverymethod post type
    $labels = array(
        'name' => __('Livraisons', 'calivraison'),
        'singular_name' => __('Advanced Custom Fields', 'calivraison'),
        'add_new' => __('Ajouter', 'calivraison'),
        'add_new_item' => __('Ajouter livraison', 'calivraison'),
        'edit_item' => __('Modifier livraison', 'calivraison'),
        'new_item' => __('Nouveau livraison', 'calivraison'),
        'view_item' => __('Voir livraison', 'calivraison'),
        'search_items' => __('Rechercher livraison', 'calivraison'),
        'not_found' => __('Pas de livraison', 'calivraison'),
        'not_found_in_trash' => __('Pas de livraison', 'calivraison'),
    );

    register_post_type('calivraisons', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "calivraisons",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));
// Create Categories post type
    $labels = array(
        'name' => __('Catégories', 'cacategory'),
        'singular_name' => __('Advanced Custom Fields', 'cacategory'),
        'add_new' => __('Ajouter', 'cacategory'),
        'add_new_item' => __('Ajouter Catégorie', 'cacategory'),
        'edit_item' => __('Modifier Catégorie', 'cacategory'),
        'new_item' => __('Nouvelle Catégorie', 'cacategory'),
        'view_item' => __('Voir Catégorie', 'cacategory'),
        'search_items' => __('Rechercher Catégorie', 'cacategory'),
        'not_found' => __('Pas de Catégorie', 'cacategory'),
        'not_found_in_trash' => __('Pas de Catégorie', 'cacategory'),
    );

    register_post_type('cacategory', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "cacategory",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

// Create paiementmode post type
    $labels = array(
        'name' => __('Paiements', 'calpaiement'),
        'singular_name' => __('Advanced Custom Fields', 'calpaiement'),
        'add_new' => __('Ajouter', 'calpaiement'),
        'add_new_item' => __('Ajouter paiement', 'calpaiement'),
        'edit_item' => __('Modifier paiement', 'calpaiement'),
        'new_item' => __('Nouveau paiement', 'calpaiement'),
        'view_item' => __('Voir paiement', 'calpaiement'),
        'search_items' => __('Rechercher paiement', 'calpaiement'),
        'not_found' => __('Pas de paiement', 'calpaiement'),
        'not_found_in_trash' => __('Pas de paiement', 'calpaiement'),
    );

    register_post_type('capaiements', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "capaiements",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));
    
    // Create card post type
    $labels = array(
        'name' => __('Carte', 'cacarte'),
        'singular_name' => __('Advanced Custom Fields', 'cacarte'),
        'add_new' => __('Ajouter', 'cacarte'),
        'add_new_item' => __('Ajouter Carte', 'cacarte'),
        'edit_item' => __('Modifier Carte', 'cacarte'),
        'new_item' => __('Nouvelle Carte', 'cacarte'),
        'view_item' => __('Voir Carte', 'cacarte'),
        'search_items' => __('Rechercher Carte', 'cacarte'),
        'not_found' => __('Pas de Carte', 'cacarte'),
        'not_found_in_trash' => __('Pas de Carte', 'cacarte'),
    );

    register_post_type('cacartes', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "cacartes",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

    // Create gifts post type
    $labels = array(
        'name' => __('Cadeaux', 'cagift'),
        'singular_name' => __('Advanced Custom Fields', 'cagift'),
        'add_new' => __('Ajouter', 'cagift'),
        'add_new_item' => __('Ajouter Cadeau', 'cagift'),
        'edit_item' => __('Modifier Cadeau', 'cagift'),
        'new_item' => __('Nouveau Cadeau', 'cagift'),
        'view_item' => __('Voir Cadeau', 'cagift'),
        'search_items' => __('Rechercher Cadeau', 'cagift'),
        'not_found' => __('Pas de Cadeau', 'cagift'),
        'not_found_in_trash' => __('Pas de Cadeau', 'cagift'),
    );

    register_post_type('cagifts', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "cagifts",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

    // Create Projet post type
    $labels = array(
        'name' => __('Projets', 'caproject'),
        'singular_name' => __('Advanced Custom Fields', 'caproject'),
        'add_new' => __('Ajouter', 'caproject'),
        'add_new_item' => __('Ajouter Projet', 'caproject'),
        'edit_item' => __('Modifier Projet', 'caproject'),
        'new_item' => __('Nouveau Projet', 'caproject'),
        'view_item' => __('Voir Projet', 'caproject'),
        'search_items' => __('Rechercher Projet', 'caproject'),
        'not_found' => __('Pas de Projet', 'caproject'),
        'not_found_in_trash' => __('Pas de Projet', 'caproject'),
    );

    register_post_type('caprojects', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "caprojects",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

      // Create Partenaires post type
      $labels = array(
        'name' => __('Partenaires', 'capartenaire'),
        'singular_name' => __('Advanced Custom Fields', 'capartenaire'),
        'add_new' => __('Ajouter', 'capartenaire'),
        'add_new_item' => __('Ajouter Partenaire', 'capartenaire'),
        'edit_item' => __('Modifier Partenaire', 'capartenaire'),
        'new_item' => __('Nouveau Partenaire', 'capartenaire'),
        'view_item' => __('Voir Partenaire', 'capartenaire'),
        'search_items' => __('Rechercher Partenaire', 'capartenaire'),
        'not_found' => __('Pas de Partenaire', 'capartenaire'),
        'not_found_in_trash' => __('Pas de Partenaire', 'capartenaire'),
    );

    register_post_type('capartenaires', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "capartenaires",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

    $labels = array(
        'name' => __('notifications', 'camessagenotif'),
        'singular_name' => __('Advanced Custom Fields', 'camessagenotif'),
        'add_new' => __('Ajouter', 'camessagenotif'),
        'add_new_item' => __('Ajouter notification', 'camessagenotif'),
        'edit_item' => __('Modifier notification', 'camessagenotif'),
        'new_item' => __('Nouvelle notification', 'camessagenotif'),
        'view_item' => __('Voir notification', 'camessagenotif'),
        'search_items' => __('Rechercher notifications', 'camessagenotif'),
        'not_found' => __('Pas de notification', 'camessagenotif'),
        'not_found_in_trash' => __('Pas de notification', 'camessagenotif'),
    );

    register_post_type('camessagenotifs', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "camessagenotifs",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,
    ));

}

function customtypes()
{   add_menu_page(__("Catégories", 'cacategory'), __("Catégories", 'cacategory'), 'manage_options', 'edit.php?post_type=cacategory', false, plugins_url('/img/package.png', __FILE__), '80.025');
    add_menu_page(__("Produit", 'caproduit'), __("Produit", 'caproduit'), 'manage_options', 'edit.php?post_type=caproduits', false, plugins_url('/img/checklist.png', __FILE__), '80.025');
    add_menu_page(__("Carte", 'cacard'), __("Carte", 'cacard'), 'manage_options', 'edit.php?post_type=cacartes', false, plugins_url('/img/credit-card.png', __FILE__), '80.025');
    add_menu_page(__("Cadeaux", 'cacadeau'), __("Cadeaux", 'cacadeau'), 'manage_options', 'edit.php?post_type=cagifts', false, plugins_url('/img/gift.png', __FILE__), '80.025');
    add_menu_page(__("Projets", 'caproject'), __("Projets", 'caproject'), 'manage_options', 'edit.php?post_type=caprojects', false, plugins_url('/img/planning.png', __FILE__), '80.025');
    add_menu_page(__("Partenaires", 'capartenaire'), __("Partenaires", 'capartenaire'), 'manage_options', 'edit.php?post_type=capartenaires', false, plugins_url('/img/network.png', __FILE__), '80.025');
    add_menu_page(__("Livraison", 'calivraison'), __("Livraison", 'calivraison'), 'manage_options', 'edit.php?post_type=calivraisons', false, plugins_url('/img/shipped.png', __FILE__), '80.025');
    add_menu_page(__("Paiement", 'calpaiement'), __("Paiement", 'calpaiement'), 'manage_options', 'edit.php?post_type=capaiements', false, plugins_url('/img/payment.png', __FILE__), '80.025');
    add_menu_page(__("Notifications", 'camessagenotif'), __("Notifications", 'camessagenotif'), 'manage_options', 'edit.php?post_type=camessagenotifs', false, plugins_url('/img/notification.png', __FILE__), '80.025');

}

add_action('init', 'initcustomtypes', 1);
add_action('admin_menu', 'customtypes', 2);
