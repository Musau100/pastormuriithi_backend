<?php
/**
 * Created by PhpStorm.
 * User: Kevynashinski
 * Date: 7/6/2016
 * Time: 10:22 PM
 */
include 'Database.php';
include 'constants.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if (isset($_REQUEST[CATEGORY_ID])) {

        $category_id = $_REQUEST[CATEGORY_ID];

        $conn = Database::connect();

        $sql = "SELECT * FROM services WHERE status=1";

        $parent = array();

        foreach ($conn->query($sql) as $row) {

            $row_array = array();

            $row_array[SERVICE_ID] = $row[SERVICE_ID];
            $row_array[SERVICE_NAME] = $row[SERVICE_NAME];
            $row_array[SERVICE_DESCRIPTION] = htmlspecialchars_decode($row[SERVICE_DESCRIPTION]);
            $row_array[SERVICE_IMAGE] = $row[SERVICE_IMAGE];

            array_push($parent, $row_array); //push the values in the array
        }
        echo json_encode($parent);

        Database::disconnect();

    } else {
        echo 'Nothing Posted';
    }

} else if ($_SERVER['REQUEST_METHOD'] == 'GET') {

    $conn = Database::connect();

    $sql = "SELECT * FROM services ";

    $parent = array();

    foreach ($conn->query($sql) as $row) {

        $row_array = array();

        $row_array[SERVICE_ID] = $row[SERVICE_ID];
        $row_array[SERVICE_NAME] = $row[SERVICE_NAME];
        $row_array[SERVICE_DESCRIPTION] = htmlspecialchars_decode($row[SERVICE_DESCRIPTION]);
        $row_array[SERVICE_IMAGE] = $row[SERVICE_IMAGE];

        array_push($parent, $row_array); //push the values in the array
    }
    echo json_encode($parent);

    Database::disconnect();
}
