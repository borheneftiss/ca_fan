<?php

require_once 'composerlibs/jwt/vendor/autoload.php';
use \Firebase\JWT\JWT;

/**
 * IMPORTANT:
 * You must specify supported algorithms for your application. See
 * https://tools.ietf.org/html/draft-ietf-jose-json-web-algorithms-40
 * for a list of spec-compliant algorithms.
 */

class JWT_Controller
{

    // intializing the name space and the resource name

    public function __construct()
    {

    }

    public function setsession($userid, $card)
    {
        date_default_timezone_set('Africa/Tunis');
        $key = JWTKEY;
        $token = array(
            "iss" => FrontURL,
            "aud" => FrontURL,
            "iat" => strtotime("now"),
            "nbf" => strtotime("now"),
            "exp" => strtotime(JWTEXPIRETIME),
            "data" => array(
                "card" => $card,
                "id" => $userid,
            ),
        );

        try {
            $jwt = JWT::encode($token, $key);
            return $jwt;
        } catch (Exception $e) {

            return false;
        }

    }

    public function checksession($jwt)
    {
        date_default_timezone_set('Africa/Tunis');

        try {

            $key = JWTKEY;

            $decoded = JWT::decode($jwt, $key, array('HS256'));

            return $decoded;

        } catch (Exception $e) {
            return false;
        }

    }

}
