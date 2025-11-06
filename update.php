<?php
include 'db.php';

$id = $_POST['edit_id'];
$name = $_POST['edit_name'];
$email = $_POST['edit_email'];
$phone = $_POST['edit_phone'];
$gender = $_POST['edit_gender'];
$color = $_POST['edit_color'];

$sql = "UPDATE users 
        SET full_name='$name', email='$email', phone='$phone', gender='$gender', fav_color='$color'
        WHERE id=$id";

if ($conn->query($sql)) {
  echo "Record updated successfully!";
} else {
  echo "Error: " . $conn->error;
}
?>
