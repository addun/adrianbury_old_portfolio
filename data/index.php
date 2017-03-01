<?php

require_once 'MysqliDb.php';
require_once 'config.php';

header('Access-Control-Allow-Origin: *');  

$db_data = Array(
    'host' => DB_HOST,
    'username' => DB_USER,
    'password' => DB_PASSWORD,
    'db' => DB_NAME,
    'prefix' => DB_PREFIX,
    'charset' => DB_CHARSET);
$db = new MysqliDb($db_data);

if (false) {
    require_once "install-db.php";
}
$request_keys = array_keys($_REQUEST);
foreach ($request_keys as $key) {
    if ($key == 'projects') {
        $cols = array(
            $db_names['project_columns']['id'],
            $db_names['project_columns']['name'],
            $db_names['project_columns']['img']
        );
        $projects = $db->get($db_names['projects_table'], null, $cols);
        die (json_encode($projects));
    } else if ($key == 'project') {
        $db->where($db_names['project_columns']['id'], $_REQUEST['project']);
        $project = $db->get($db_names['projects_table']);
        die (json_encode($project));
    } else if ($key == 'offers') {
        $offers = $db->get($db_names['offers_table']);
        die (json_encode($offers));
    } else if ($key == 'sendEmail') {

        $data_from_json = json_decode(file_get_contents('php://input'), true);

        $name = $data_from_json['name'];
        $email = $data_from_json['email'];
        $msg = $data_from_json['msg'];

        $dataReturn = array();
        if (!$name || !$email || !filter_var($email, FILTER_VALIDATE_EMAIL) || !$msg) {
            $dataReturn['valid'] = "false";
            $dataReturn['send'] = "false";
            die(json_encode($dataReturn));
        }

        $from = "Content-type: text/html; charset=UTF-8";
        $to = "kubaadrian2@gmail.com";
        $subject = 'Wiadomość od ' . $name;

        $body = '<html><body>';
        $body .= $name . ' (' . $email . ') wysłał do Ciebie wiadomość o treści: <p>' . $msg . '</p>';
        $body .= '</body></html>';

        if (mail($to, $subject, $body, $from)) {
            $dataReturn['valid'] = "true";
            $dataReturn['send'] = "true";
            die(json_encode($dataReturn));
        }
        $dataReturn['valid'] = "true";
        $dataReturn['send'] = "false";
        die(json_encode($dataReturn));
    } else if ($key == 'skill-lists') {
        $cols = array(
            $db_names['skill_list_columns']['desc']
        );
        $skills_list = $db->get($db_names['skills_list_table'], null, $cols);
        die (json_encode($skills_list));
    } else if ($key == 'skill-icons') {
        $cols = array(
            $db_names['skill_icon_columns']['img'],
            $db_names['skill_icon_columns']['alt'],
        );
        $skills_icon = $db->get($db_names['skills_icon_table'], null, $cols);
        die (json_encode($skills_icon));
    }
}

