<?php

$db_main=env('DB_DATABASE','rnd_2023');

//users
define('TABLE_USERS', $db_main.'.users');
define('TABLE_PRINCIPALS', $db_main.'.principals');
define('TABLE_COMPETITORS', $db_main.'.competitors');

define('TABLE_CROPS', $db_main.'.crops');
define('TABLE_CROP_TYPES', $db_main.'.crop_types');
define('TABLE_VARIETIES', $db_main.'.varieties');


define('TABLE_LOCATION_PARTS', $db_main.'.location_parts');
define('TABLE_LOCATION_AREAS', $db_main.'.location_areas');
define('TABLE_LOCATION_TERRITORIES', $db_main.'.location_territories');
