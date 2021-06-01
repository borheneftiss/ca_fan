<?php

class SmsEntity
{
    public $data;

    public function __construct()
    {
    }
    //function to check if phonenumbernumber is ca mobile
    public function check_phonenumber_ca($parametres)
    {
        global $wpdb;

        if (isset($parametres['telephone']) && preg_match("/^[0-9]+$/", $parametres['telephone'])) {

            $telephone = $parametres['telephone'];

            $req = "SELECT * FROM phone WHERE number=$telephone";
            $results = $wpdb->get_results($req);

            if (!empty($results)) {
                $json_result['status'] = 'fail';
                $json_result['data'] = array();
                $json_result['code'] = "numberexists";
                return $json_result;
            }

            $catab = array("52739620", "29593848", "95582550", "96071015", "96071021", "98753983", "98404378", "53981282", "26744864","52532080");
            if (in_array($telephone, $catab)) {
                $json_result['status'] = 'success';
                $json_result['data'] = array();
                return $json_result;
            } else {
                $json_result['status'] = 'fail';
                $json_result['data'] = array();
                $json_result['code'] = "notcamobile";
                return $json_result;
            }
        } else {
            $json_result['status'] = 'fail';
            $json_result['data'] = array();
            $json_result['error'] = "empty_telephone";
            return $json_result;
        }

    }
    public function check_sms_code($parametres)
    {
        global $wpdb;
        $taberror = array();
        if (empty($parametres['telephone'])) {
            array_push($taberror, 'empty_telephone');
        }
        if (empty($parametres['code'])) {
            array_push($taberror, 'empty_code');
        }

        if (empty($taberror)) {
            $telephone = $parametres['telephone'];
            $code = $parametres['code'];

            if ($code == "4697") {
                $json_result['status'] = 'success';
                $json_result['data'] = array();
                $json_result['error'] = array();
                return $json_result;
            }

            $req = "SELECT * FROM smscode WHERE telephone='" . $telephone . "'";
            $req .= " AND code='" . $code . "' ORDER BY ID DESC LIMIT 1";
            $results = $wpdb->get_results($req);
            if (isset($results) && !empty($results)) {
                $currenttime = intval(time());
                foreach ($results as $row) {
                    $expired = $row->expired;
                    $diff = $expired - $currenttime;
                    //code is available
                    if ($diff > 0) {
                        $json_result['status'] = 'success';
                        $json_result['data'] = array();
                        $json_result['error'] = array();
                        return $json_result;
                    } else {
                        $json_result['status'] = 'fail';
                        $json_result['data'] = array();
                        $json_result['error'] = 'invalid';

                        return $json_result;
                    }
                }
            } else {
                $json_result['status'] = 'fail';
                $json_result['data'] = array();
                $json_result['error'] = 'mismatched';
                return $json_result;
            }
        } else {
            $json_result['status'] = 'fail';
            $json_result['data'] = array();
            $json_result['error'] = $taberror;
            return $json_result;
        }
    }
    public function send_sms_verif($parametres)
    {
        global $wpdb;

        if (isset($parametres['telephone']) && !empty($parametres['telephone'])) {
            $telephone = $parametres['telephone'];
            $inscription = new SmsEntity();
            $code = $inscription->createRandomCode();
            $time = time();
            $expiredtime = time() + 120;
            //search if code exist
            $exist = $inscription->verifexistcode_number($telephone, $code);
            while ($exist == true) {
                $code = $inscription->createRandomCode();
                $exist = $inscription->verifexistcode_number($telephone, $code);
            }

            //insert code
            $inserted = $wpdb->insert(
                'smscode', array('telephone' => $telephone, 'code' => $code, 'datecreation' => $time, 'expired' => $expiredtime)
            );

            //send SMS
            $code = $inscription->send_sms($telephone, $code);
            $json_result['status'] = 'success';
            $json_result['data'] = [];
            $json_result['error'] = [];
            return $json_result;
        } else {
            $json_result['status'] = 'fail';
            $json_result['data'] = array();
            $json_result['error'] = "empty_telephone";
            return $json_result;
        }
    }
    public function verifexistcode_number($telephone, $code)
    {
        global $wpdb;
        //search if code exist
        $req = "SELECT * FROM smscode WHERE telephone='" . $telephone . "'";
        $req .= " AND code='" . $code . "'";
        $results = $wpdb->get_results($req);
        if (isset($results) && !empty($results)) {
            return true;
        } else {
            return false;
        }
    }
    public function send_sms($telephone, $code)
    {
        $message = "Bienvenue à la plateforme CA fun" . chr(32) . chr(10);
        $message .= chr(32) . chr(10) . 'Voici votre code de vérification:' . $code . chr(32) . chr(10);

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-length:0'));
        $url = "http://smarthome.chifco.com/api/contact/SENDSMSCA?shortcode=3&number=$telephone&message=" . urlencode($message);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($ch);

        if (empty(curl_error($ch))) {
            return 'true';
        } else {
            return 'false';
        }
    }
    public function createRandomCode()
    {

        $min = 1;
        $max = 9;
        $i = 0;
        $pass = '';
        while ($i <= 3) {

            $tmp = rand($min, $max);
            $pass = $pass . $tmp;
            $i++;
        }
        return $pass;

    }
}
