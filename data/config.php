<?php


define('DB_NAME', 'aspire_bury');
define('DB_USER', 'aspire_admin');
define('DB_PASSWORD', 'AdrianAdmin');
define('DB_HOST', 'www.s57.hekko.pl');
define('DB_CHARSET', 'utf8mb4');
define('DB_PREFIX', 'br_');


$db_names = array(
    'projects_table' => 'projects',
    'project_columns' => array(
        'id' => 'project_id',
        'name' => 'project_name',
        'img' => 'project_img',
        'desc' => 'project_desc',
        'url' => 'project_url'
    ),

    'offers_table' => 'offers',
    'offer_columns' => array(
        'id' => 'offer_id',
        'name' => 'offer_name',
        'icon' => 'offer_icon',
        'desc' => 'offer_desc',
    ),

    'skills_list_table' => 'skills_list',
    'skill_list_columns' => array(
        'id' => 'skill_id',
        'desc' => 'skill_desc'
    ),

    'skills_icon_table' => 'skills_icon',
    'skill_icon_columns' => array(
        'id' => 'skill_id',
        'img' => 'skill_img',
        'alt' => 'skill_alt',
    )
);
