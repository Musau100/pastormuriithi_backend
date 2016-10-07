<?php
/**
 * Created by PhpStorm.
 * User: sydney
 * Date: 9/28/16
 * Time: 11:31 PM
 */
include 'Database.php';
include 'constants.php';

$conn = Database::connect();

$sql = "SELECT * FROM sliders WHERE status=1";

$parent = array();

foreach ($conn->query($sql) as $row) {
    array_push($parent, $row[SLIDER_IMAGE]); //push the values in the array
}
echo json_encode($parent);

Database::disconnect();
