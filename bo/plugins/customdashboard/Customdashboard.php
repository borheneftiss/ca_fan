<?php
/*
   Plugin Name: Custom dashboard
   Description: Custom dashboard
   Version: 1.0
   Author: Chifco
   */

add_action('wp_dashboard_setup', 'remove_dashboard_widgets');
add_filter('show_admin_bar', '__return_false');


function remove_dashboard_widgets()
{
    global $wp_meta_boxes;
    if (!current_user_can('administrator')) {
        unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_quick_press']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_incoming_links']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_right_now']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_plugins']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_drafts']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_comments']);
        unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_primary']);
        unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_secondary']);
        unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_activity']);
    }
}

function my_login_logo()
{
    ?>
    <style type="text/css">


    </style>
<?php
}
add_action('login_enqueue_scripts', 'my_login_logo');

add_action('admin_head', 'my_custom_css');

function my_custom_css()
{
    ?>
  <style>
    body table.fixed{

        table-layout: fixed!important;
    }
	
	
	#wp-admin-bar-updates {display:none!important;}
	#wp-admin-bar-comments {display:none!important;}
	#wp-admin-bar-new-content {display:none!important;}
	#wp-admin-bar-mwp-settings {display:none!important;}
  </style>
<?php
}









?>
