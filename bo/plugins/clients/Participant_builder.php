<?php
/*
 * Plugin Name: Clients

 * Description:  Clients
 * Version:     1.0
 * Author:      Chifco

 * @package   Go
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
   */


include_once 'ParticipantInterface.php';


function register_Participant()
{
$controller = new Participant_Controller();
$controller->register_routes();
}




?>