<?php
$sql_1 = "CREATE TABLE {$db::$prefix}{$db_names['projects_table']} (" .
        "{$db_names['project_columns']['id']} INT NOT NULL AUTO_INCREMENT," .
        "{$db_names['project_columns']['name']} VARCHAR(45) NOT NULL," .
        "{$db_names['project_columns']['img']} VARCHAR(2083) NOT NULL," .
        "{$db_names['project_columns']['desc']} LONGTEXT NOT NULL," .
        "{$db_names['project_columns']['url']} VARCHAR(2083) NOT NULL," .
        "PRIMARY KEY ({$db_names['project_columns']['id']}));";
    $db->query($sql_1);
    echo $db->getLastError();
    echo '<br/>';


    $sql_2 = "CREATE TABLE {$db::$prefix}{$db_names['offers_table']}(" .
        "{$db_names['offer_columns']['id']}  INT NOT NULL AUTO_INCREMENT," .
        "{$db_names['offer_columns']['icon']}  VARCHAR(45) NOT NULL," .
        "{$db_names['offer_columns']['name']}  VARCHAR(45) NOT NULL," .
        "{$db_names['offer_columns']['desc']}  TEXT NOT NULL," .
        "PRIMARY KEY( {$db_names['offer_columns']['id']}  ));";
    $db->query($sql_2);
    echo $db->getLastError();
    echo '<br/>';


    $sql_3 = "CREATE TABLE {$db::$prefix}{$db_names['skills_list_table']}(" .
        "{$db_names['skill_list_columns']['id']}  INT NOT NULL AUTO_INCREMENT," .
        "{$db_names['skill_list_columns']['desc']}  LONGTEXT NOT NULL," .
        "PRIMARY KEY( {$db_names['skill_list_columns']['id']}  ));";
    $db->query($sql_3);
    echo $db->getLastError();
    echo '<br/>';


    $sql_4 = "CREATE TABLE {$db::$prefix}{$db_names['skills_icon_table']}(" .
        "{$db_names['skill_icon_columns']['id']}  INT NOT NULL AUTO_INCREMENT," .
        "{$db_names['skill_icon_columns']['img']}  VARCHAR(2083) NOT NULL," .
        "{$db_names['skill_icon_columns']['alt']}  VARCHAR(50) NOT NULL," .
        "PRIMARY KEY( {$db_names['skill_list_columns']['id']}  ));";
    $db->query($sql_4);
    echo $db->getLastError();
    echo '<br/>';



