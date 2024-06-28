<?php
require_once "connection.php";

if (isset($_POST['billinfo'])) {
    $fid = $_POST['fid'];
    $frmdate = $_POST['from-date'];
    $todate = $_POST['to-date'];

    $sql = "SELECT id, fname, milk_type FROM farmer WHERE id='$fid'";
    $query_run = mysqli_query($conn, $sql);

    if ($query_run) {
        foreach ($query_run as $row) {
            echo "farmer id: " . $row['id'] . "<br>";
            echo "farmer name: " . $row['fname'] . "<br>";
            echo "milk_type: " . $row['milk_type'] . "<br>";

            $milkType = strtoupper($row['milk_type']); // Convert to uppercase for case-insensitive comparison

            $productId = ($milkType == "COW") ? 210 : 209;

            $selectProductCost = "SELECT product_cost FROM Dairy_products WHERE produt_id=$productId";
            $result = mysqli_query($conn, $selectProductCost);

            if ($result) {
                $productCost = mysqli_fetch_assoc($result)['product_cost'];
                echo "Product Cost: " . $productCost . "<br>";
            } else {
                echo "Error fetching product cost: " . mysqli_error($conn) . "<br>";
            }
        }
    } else {
        echo "Record not found";
    }
}
?>
