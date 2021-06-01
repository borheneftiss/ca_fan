<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              http://chifco.com
 * @since             1.0.0
 * @package           Caauthentification
 *
 * @wordpress-plugin
 * Plugin Name:       CAAuthentification
 * Plugin URI:        http://chifco.com
 * Description:       CA platforme authentification plugin
 * Version:           1.0.0
 * Author:            Hayfa-Chifco
 * Author URI:        http://chifco.com
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       caauthentification
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}
require_once plugin_dir_path( __FILE__ ) .'/endpoint/Endpoints.php';
/**
 * Currently plugin version.
 * Start at version 1.0.0 and use SemVer - https://semver.org
 * Rename this for your plugin and update it as you release new versions.
 */
define( 'PLUGIN_NAME_VERSION', '1.0.0' );

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-caauthentification-activator.php
 */
function activate_caauthentification() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-caauthentification-activator.php';
	Caauthentification_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-caauthentification-deactivator.php
 */
function deactivate_caauthentification() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-caauthentification-deactivator.php';
	Caauthentification_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_caauthentification' );
register_deactivation_hook( __FILE__, 'deactivate_caauthentification' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-caauthentification.php';


/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_caauthentification() {

	$plugin = new Caauthentification();
	$plugin->run();

}
run_caauthentification();

function register_session()
{
    if (!session_id()) {
        session_start();
    }

}
add_action('init', 'register_session');
