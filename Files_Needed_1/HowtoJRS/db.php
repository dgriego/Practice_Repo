<?
date_default_timezone_set('America/New_York');

$environment_display = "Local";

$DB = array();
$DB['master']['hostname'] = "localhost";
$DB['slave']['hostname']  = "localhost";
$DB['master']['username'] = "root";
$DB['slave']['username']  = "root";
$DB['master']['password'] = "";
$DB['slave']['password']  = "";

if(isset($GLOBALS['environment']) && $GLOBALS['environment'] == 'test') {
    $DB['master']['indexer'] = "hotel_scraper_test";
    $DB['slave']['indexer'] = "hotel_scraper_test";
    $DB['master']['name'] = "newMexicoTrips_test";
    $DB['slave']['name'] = "newMexicoTrips_test";
}
else {
    $DB['master']['indexer'] = "hotel_scraper";
    $DB['slave']['indexer'] = "hotel_scraper";
    $DB['master']['name'] = "newMexicoTrips";
    $DB['slave']['name'] = "newMexicoTrips";
}
?>
