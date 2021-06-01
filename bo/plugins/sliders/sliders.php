<?php
/**
 * Plugin Name: CaSliders

 * Description:  CaSliders
 * Version:     1.0
 * Author:      Chifco
 * Text Domain: CaSliders


 * @package   Go
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
 */




function initCaslider()
{

    // Create CaCatalogue post type
    $labels = array(
                  'name' => __( 'Ca&nbsp;Slider', 'cahomeslider' ),
                  'singular_name' => __( 'Advanced Custom Fields', 'cahomeslider' ),
                  'add_new' => __( 'Add New' , 'cahomeslider' ),
                  'add_new_item' => __( 'Add New HomeSlider' , 'cahomeslider' ),
                  'edit_item' =>  __( 'Edit HomeSlider' , 'cahomeslider' ),
                  'new_item' => __( 'New HomeSlider' , 'cahomeslider' ),
                  'view_item' => __('View HomeSlider', 'cahomeslider'),
                  'search_items' => __('Search HomeSlider', 'cahomeslider'),
                  'not_found' =>  __('No HomeSlider found', 'cahomeslider'),
                  'not_found_in_trash' => __('HomeSlider not found in Trash', 'cahomeslider'),
              );

    register_post_type('cahomeslider', array(
                           'labels' => $labels,
                           'public' => false,
                           'show_ui' => true,
                           '_builtin' =>  false,
                           'capability_type' => 'page',
                           'hierarchical' => true,
                           'rewrite' => false,
                           'query_var' => "cahomeslider",
                           'supports' => array(
                                           'title',
                                       ),
                           'show_in_menu'	=> false,
                       ));
					   
					   
	$labels2 = array(
                  'name' => __( 'video Slider', 'cahomeslider' ),
                  'singular_name' => __( 'Advanced Custom Fields', 'cahomeslider' ),
                  'add_new' => __( 'Add New' , 'cahomeslider' ),
                  'add_new_item' => __( 'Add New video slider' , 'cahomeslider' ),
                  'edit_item' =>  __( 'Edit video slider' , 'cahomeslider' ),
                  'new_item' => __( 'New video slider' , 'cahomeslider' ),
                  'view_item' => __('View video slider', 'cahomeslider'),
                  'search_items' => __('Search video slider', 'cahomeslider'),
                  'not_found' =>  __('No video slider found', 'cahomeslider'),
                  'not_found_in_trash' => __('video slider not found in Trash', 'cahomeslider'),
              );

    register_post_type('cavideoslider', array(
                           'labels' => $labels2,
                           'public' => false,
                           'show_ui' => true,
                           '_builtin' =>  false,
                           'capability_type' => 'page',
                           'hierarchical' => true,
                           'rewrite' => false,
                           'query_var' => "cavideoslider",
                           'supports' => array(
                                           'title',
                                       ),
                           'show_in_menu'	=> false,
                       ));
}

function Ca_sliders() {

    add_menu_page(__("Ca-Sliders",'cahomeslider'), __("Ca Slider",'cahomeslider'), 'manage_options', 'edit.php?post_type=cahomeslider', false, plugins_url('/img/settings.png',__FILE__), '80.025');
	add_submenu_page( 'edit.php?post_type=cahomeslider', 'Ca videos slider', 'Ca videos slider','manage_options', 'edit.php?post_type=cavideoslider',false); 
}

add_action('init', 'initCaslider',1);
add_action('admin_menu','Ca_sliders',2);

add_action( 'save_post', 'savecahomeslider' );
function savecahomeslider() {
    global $post;

	$id=get_the_ID();
	$posttype=get_post_type($id);
    if ($posttype == 'cahomeslider' && get_post_meta( $id,'Caslider_homecourant',true )=="oui"){
        global $wpdb;
	    $return = $wpdb->get_results("SELECT p.ID FROM wp_posts p where p.post_status='publish' and p.post_type='cahomeslider' and p.ID!=$id " );
		foreach ($return as  $value){
  
	           update_field( 'Caslider_homecourant', 'non', $value->ID ); 
              }
    }
	
    if ($posttype == 'cavideoslider' && get_post_meta( $id,'Caslider_videocourant',true )=="oui"){
        global $wpdb;
	    $return = $wpdb->get_results("SELECT p.ID FROM wp_posts p where p.post_status='publish' and p.post_type='cavideoslider' and p.ID!=$id " );
		foreach ($return as  $value){
  
	           update_field( 'Caslider_videocourant', 'non', $value->ID ); 
              }
    }	
	
	
}





?>