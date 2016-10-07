<?php
/**
 * Created by PhpStorm.
 * User: sydney
 * Date: 9/10/16
 * Time: 10:33 AM
 */
include 'Database.php';
include 'constants.php';

$conn = Database::connect();

$sql = "SELECT * FROM contact_info LIMIT 1";

$result = $conn->query($sql)->fetch();

$row_array = array();

$row_array[CONTACT_ID] = $result[CONTACT_ID];
$row_array[COMPANY_NAME] = $result[COMPANY_NAME];
$row_array[LOCATION] = $result[LOCATION];
$row_array[WEBSITE] = $result[WEBSITE];
$row_array[OFFICE] = $result[OFFICE];
$row_array[MOBILE] = $result[MOBILE];
$row_array[EMAIL] = $result[EMAIL];
//$row_array[ABOUT_US] = $result[ABOUT_US];
$row_array[LOGO] = $result[LOGO];

//array_push($parent,$row_array);

echo json_encode($row_array);

Database::disconnect();
