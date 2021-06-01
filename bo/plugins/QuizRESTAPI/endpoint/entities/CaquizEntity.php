<?php

require_once ABSPATH . 'wp-content/plugins/JWT_Controller.php';
require_once ABSPATH . 'wp-content/plugins/Tools_Controller.php';

class CaquizEntity
{

    public function __construct()
    {

    }

    public function getallquiz($request)
    {

        $token = $request['token'];

        $jwtobj = new JWT_Controller();

        $decoded = $jwtobj->checksession($token);
        if ($decoded === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "log_in";
            return ($JSONObj);
        }
        $userid = $decoded->data->id;
        date_default_timezone_set('Africa/Tunis');
        global $redis;
        global $wpdb;

        $return = 0;
        $exception = null;
        if (USEREDIS == true) {

            /***************** get data from redis **************************************/

            global $redis;

            try {

                $return = json_decode($redis->get(listofquiz));

                if (is_null($return)) {
                    throw new Exception();
                }

            } catch (Exception $ex) {

                $exception = $ex;
            }

            /****************************************************************************************************/

        }

        if (USEREDIS == false || !is_null($exception)) {

            /************************************get data from database ******************************************/

            $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish' and p.post_type='caquiz' and p.ID=m.post_id and m.meta_key='caquiz_datedebut' and STR_TO_DATE(meta_value, '%d-%m-%Y %H:%i:00')<= now()", 'ARRAY_N');

            /****************************************************************************************************/
        }

        $allquiz = array();
        for ($i = 0; $i < count($return); $i++) {

            $quiz_datefin = get_post_meta($return[$i][0], 'caquiz_datefin', true);
            $quiz_active = get_post_meta($return[$i][0], 'caquiz_active', true);
            $JSONquiz = new stdClass();
            $active = 0;
            if ($quiz_active == "oui") {

                if (strtotime($quiz_datefin) > strtotime("now")) {

                    $active = 1;
                }

            }
            $quizid = $return[$i][0];
            $checkalreadyanswerd = $wpdb->get_results("SELECT * FROM `quizanswers` where `idclient`=$userid and quizid=$quizid", 'ARRAY_N');
            if (!empty($checkalreadyanswerd)) {
                $active = 3;
            }

            $JSONquiz->quizid = $return[$i][0];
            $JSONquiz->titre = get_the_title($return[$i][0]);
            $JSONquiz->active = $active;
            $allquiz[] = $JSONquiz;
        }

        if (empty($allquiz)) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_non_trouves";
            return ($JSONObj);
        } else {
            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = $allquiz;
            $JSONObj->error = array();
            return ($JSONObj);

        }

    }

    public function quizdata($request)
    {
        $token = $request['token'];

        $jwtobj = new JWT_Controller();
        $decoded = $jwtobj->checksession($token);
        if ($decoded === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "log_in";
            return ($JSONObj);
        }
        $userid = $decoded->data->id;

        $quizid = $request['quizid'];
        if (!preg_match("/^[0-9]+$/", $quizid)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "parametre_quizid_non_valide";
            return ($JSONObj);
        }

        date_default_timezone_set('Africa/Tunis');
        global $wpdb;
        $questionsarray = array();

        $checkalreadyanswerd = $wpdb->get_results("SELECT * FROM `quizanswers` where `idclient`=$userid and quizid=$quizid ", 'ARRAY_N');
        if (!empty($checkalreadyanswerd)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_deja_enregistre";
            return ($JSONObj);
        }

        $return = 0;
        $exception = null;
        if (USEREDIS == true) {

            /***************** get data from redis **************************************/

            global $redis;

            try {

                $array = json_decode($redis->get(listofquiz));

                if (is_null($array)) {
                    throw new Exception();
                }

                $key = array_search($quizid, array_column($array, 0));

                if ($key !== false) {
                    $return = array($array[$key]);
                }

            } catch (Exception $ex) {

                $exception = $ex;
            }

            /****************************************************************************************************/

        }

        if (USEREDIS == false || !is_null($exception)) {

            /************************************get data from database ******************************************/

            $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish'
            and p.post_type='caquiz' and p.ID=m.post_id and m.meta_key='caquiz_datedebut' and STR_TO_DATE(meta_value, '%d-%m-%Y %H:%i:00')<= now() and p.id=$quizid", 'ARRAY_N');

            /****************************************************************************************************/
        }

        for ($i = 0; $i < count($return); $i++) {

            $quiz_datefin = get_post_meta($return[$i][0], 'caquiz_datefin', true);
            $quiz_active = get_post_meta($return[$i][0], 'caquiz_active', true);

            if ($quiz_active == "oui" && strtotime($quiz_datefin) > strtotime("now")) {

                $questions = get_post_meta($return[$i][0], 'caquiz_listquestion', true);

                foreach ($questions as $value) {

                    $JSONquestion = new stdClass();
                    $JSONsuggestions = new stdClass();
                    $JSONquestion->questionid = $value;
                    $JSONquestion->question = get_the_title($value);
                    $suggestions = get_post_meta($value, 'caquestion_suggestion', true);
                    $suggarray = explode("\r\n", $suggestions);

                    for ($b = 0; $b < count($suggarray); $b++) {
                        $y = $b + 1;
                        $JSONsuggestions->$y = $suggarray[$b];
                    }

                    $JSONquestion->suggestion = $JSONsuggestions;
                    $questionsarray[] = $JSONquestion;
                }

            }

        }

        $quizscore = $wpdb->get_results("SELECT COALESCE(sum(`score`),0) FROM `scores` where `idclient`=$userid and `gameid`=1", 'ARRAY_N');

        if (empty($questionsarray)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_non_trouves";
            return ($JSONObj);
        } else {

            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = array("quizscore" => $quizscore[0][0], "quiz" => $questionsarray);
            $JSONObj->error = array();
            return ($JSONObj);

        }

    }

    public function quizdataresponse($request)
    {
        $token = $request['token'];

        $jwtobj = new JWT_Controller();
        $decoded = $jwtobj->checksession($token);
        if ($decoded === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "log_in";
            return ($JSONObj);
        }
        $userid = $decoded->data->id;

        $quizid = $request['quizid'];
        if (!preg_match("/^[0-9]+$/", $quizid)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "parametre_quizid_non_valide";
            return ($JSONObj);
        }

        date_default_timezone_set('Africa/Tunis');
        global $wpdb;
        $questionsarray = array();

        $checkalreadyanswerd = $wpdb->get_results("SELECT quizanswers FROM `quizanswers` where `idclient`=$userid and quizid=$quizid ", 'ARRAY_N');
        if (empty($checkalreadyanswerd)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_non_joue";
            return ($JSONObj);
        }

        $return = 0;
        $exception = null;
        if (USEREDIS == true) {

            /***************** get data from redis **************************************/

            global $redis;

            try {

                $array = json_decode($redis->get(listofquiz));

                if (is_null($array)) {
                    throw new Exception();
                }

                $key = array_search($quizid, array_column($array, 0));

                if ($key !== false) {
                    $return = array($array[$key]);
                }

            } catch (Exception $ex) {

                $exception = $ex;
            }

            /****************************************************************************************************/

        }

        if (USEREDIS == false || !is_null($exception)) {

            /************************************get data from database ******************************************/

            $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish'
            and p.post_type='caquiz' and p.ID=m.post_id and m.meta_key='caquiz_datedebut' and STR_TO_DATE(meta_value, '%d-%m-%Y %H:%i:00')<= now() and p.id=$quizid", 'ARRAY_N');

            /****************************************************************************************************/
        }

        for ($i = 0; $i < count($return); $i++) {

            //$quiz_datefin = get_post_meta($return[$i][0], 'caquiz_datefin', true);
            $quiz_active = get_post_meta($return[$i][0], 'caquiz_active', true);

            if ($quiz_active == "oui") {

                $questions = get_post_meta($return[$i][0], 'caquiz_listquestion', true);

                foreach ($questions as $value) {

                    $JSONquestion = new stdClass();
                    $JSONsuggestions = new stdClass();
                    $JSONquestion->questionid = $value;
                    $JSONquestion->question = get_the_title($value);
                    $suggestions = get_post_meta($value, 'caquestion_suggestion', true);
                    $suggarray = explode("\r\n", $suggestions);

                    for ($b = 0; $b < count($suggarray); $b++) {
                        $y = $b + 1;
                        $JSONsuggestions->$y = $suggarray[$b];
                    }

                    $JSONquestion->suggestion = $JSONsuggestions;
                    $JSONquestion->answer = get_post_meta($value, 'caquestion_reponse', true);

                    $reparray = json_decode($checkalreadyanswerd[0][0], true);
                    $repkey = array_search($value, array_column($reparray, 'questionid'));
                    $JSONquestion->useranswer = json_decode($checkalreadyanswerd[0][0], true)[$repkey]['questionanswer'];
                    $questionsarray[] = $JSONquestion;
                }

            }

        }

        $quizscore = $wpdb->get_results("SELECT COALESCE(sum(`score`),0) FROM `scores` where `idclient`=$userid and `gameid`=1", 'ARRAY_N');

        if (empty($questionsarray)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_non_trouves";
            return ($JSONObj);
        } else {

            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = array("quizscore" => $quizscore[0][0], "quiz" => $questionsarray);
            $JSONObj->error = array();
            return ($JSONObj);

        }

    }

    public function savequizanswer($request)
    {
        $token = $request['token'];

        $jwtobj = new JWT_Controller();
        $decoded = $jwtobj->checksession($token);
        if ($decoded === false) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "log_in";
            return ($JSONObj);
        }
        $userid = $decoded->data->id;
        $usercard = $decoded->data->card;

        $answers = $request['answer'];
        if (!isset($answers) || $answers == "") {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "parametre_answer_non_valide";
            return ($JSONObj);
        }

        if (is_string($answers)) {
            $answers = json_decode($answers, true);
        }

        if (is_null($answers)) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "erreur_json";
            return ($JSONObj);
        }

        if (!array_key_exists("quizid", $answers) || !array_key_exists("answers", $answers)) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "erreur_json";
            return ($JSONObj);

        } else if (!preg_match("/^[0-9]+$/", $answers['quizid'])) {
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "erreur_json";
            return ($JSONObj);
        }

        $quizid = $answers['quizid'];

        date_default_timezone_set('Africa/Tunis');
        global $wpdb;

        $checkalreadyanswerd = $wpdb->get_results("SELECT * FROM `quizanswers` where `idclient`=$userid and quizid=$quizid ", 'ARRAY_N');

        if (!empty($checkalreadyanswerd)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_deja_enregistre";
            return ($JSONObj);
        }

        $return = 0;
        $exception = null;
        if (USEREDIS == true) {

            /***************** get data from redis **************************************/

            global $redis;

            try {

                $array = json_decode($redis->get(listofquiz));

                if (is_null($array)) {
                    throw new Exception();
                }

                $key = array_search($quizid, array_column($array, 0));

                if ($key !== false) {
                    $return = array($array[$key]);
                }

            } catch (Exception $ex) {

                $exception = $ex;
            }

            /****************************************************************************************************/

        }

        if (USEREDIS == false || !is_null($exception)) {

            /************************************get data from database ******************************************/

            $return = $wpdb->get_results("SELECT p.`ID` FROM wp_posts p , wp_postmeta m where p.post_status='publish'
            and p.post_type='caquiz' and p.ID=m.post_id and m.meta_key='caquiz_datedebut' and STR_TO_DATE(meta_value, '%d-%m-%Y %H:%i:00')<= now() and p.id=$quizid", 'ARRAY_N');

            /****************************************************************************************************/
        }

        if (empty($return)) {

            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "quiz_non_trouves";
            return ($JSONObj);
        }

        $allquestions = get_post_meta($return[0][0], 'caquiz_listquestion', true);
        $keyexist = true;
        $answerstab = $answers['answers'];

        $saveanswers = array();
        $points = 0;
        $nbrightquestions = 0;

        for ($i = 0; $i < count($allquestions); $i++) {

            $dbquestionid = $allquestions[$i];

            if (array_key_exists($dbquestionid, $answerstab)) {
                //save data
                $JSONObj = new stdClass();
                $JSONObj->questionid = $dbquestionid;
                $JSONObj->questionanswer = $answerstab[$dbquestionid];
                if (get_post_meta($dbquestionid, 'caquestion_reponse', true) == $answerstab[$dbquestionid]) {
                    $points += (int) get_post_meta($dbquestionid, 'caquestion_point', true);
                    $nbrightquestions++;
                }

                $saveanswers[] = $JSONObj;

            } else {
                $JSONObj = new stdClass();
                $JSONObj->questionid = $dbquestionid;
                $JSONObj->questionanswer = 0;
                $saveanswers[] = $JSONObj;
            }
        }

        $res = $wpdb->get_results("START TRANSACTION");

        $table = 'quizanswers';
        $data = array('idclient' => $userid, 'quizid' => $quizid, 'quizanswers' => json_encode($saveanswers));
        $format = array();
        $insertanswers = $wpdb->insert($table, $data, $format);

        $table = 'scores';
        $data = array('idclient' => $userid, 'card' => $usercard, 'gameid' => '1', 'level' => $wpdb->insert_id, 'score' => $points);
        $format = array();
        $insertscore = $wpdb->insert($table, $data, $format);

        if ($insertscore === 1 && $insertanswers === 1) {
            $res = $wpdb->get_results("COMMIT");
            $tools = new Tools_Controller();
            $score = $tools->getscore($usercard);
            $JSONObj = new stdClass();
            $JSONObj->status = "success";
            $JSONObj->data = array("quizscore" => $points, "rightanswers" => $nbrightquestions, "allquestions" => count($allquestions), "newscore" => $score);
            $JSONObj->error = array();
            return ($JSONObj);
        } else {
            $res = $wpdb->get_results("ROLLBACK");
            $JSONObj = new stdClass();
            $JSONObj->status = "fail";
            $JSONObj->data = array();
            $JSONObj->error = "erreur_serveur";
            return ($JSONObj);
        }

    }

}
