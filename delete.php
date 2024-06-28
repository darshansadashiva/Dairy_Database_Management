<?php
require_once 'connection.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Delete associated records in the 'record' table
    $deleteRecords = "DELETE FROM `record` WHERE `fid` = '$id'";
    if (!$conn->query($deleteRecords)) {
        echo "Error deleting associated records in 'record' table: " . $conn->error;
        exit;
    }

    // Delete associated records in the 'bill' table
    $deleteBills = "DELETE FROM `bill` WHERE `farmer_id` = '$id'";
    if (!$conn->query($deleteBills)) {
        echo "Error deleting associated records in 'bill' table: " . $conn->error;
        exit;
    }

    // Now, delete the farmer record
    $del = "DELETE FROM `farmer` WHERE `id` = '$id'";
    if ($conn->query($del) === TRUE) {
        header('Location: farmer.php');
    } else {
        echo "Error deleting farmer record: " . $del . "<br>" . $conn->error;
    }
}

$conn->close();
?>
