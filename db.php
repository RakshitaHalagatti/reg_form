<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "reg_db";  // ✅ Updated name here

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
