<?php
include 'db.php';

$full_name = $_POST['full_name'];
$password = $_POST['password'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$website = $_POST['website'];
$search_query = $_POST['search_query'];
$dob = $_POST['dob'];
$time_pref = $_POST['time_pref'];
$datetime_pref = $_POST['datetime_pref'];
$month_pref = $_POST['month_pref'];
$week_pref = $_POST['week_pref'];
$fav_color = $_POST['fav_color'];
$gender = $_POST['gender'];
$skills = implode(",", $_POST['skills'] ?? []);
$range_value = $_POST['range_value'];
$hidden_value = $_POST['hidden_value'];
$message = $_POST['message'];

// Handle image upload
$image_path = "";
if (!empty($_FILES['image_file']['name'])) {
  $image_path = "uploads/" . basename($_FILES['image_file']['name']);
  move_uploaded_file($_FILES['image_file']['tmp_name'], $image_path);
}

// Handle file upload
$file_path = "";
if (!empty($_FILES['file_upload']['name'])) {
  $file_path = "uploads/" . basename($_FILES['file_upload']['name']);
  move_uploaded_file($_FILES['file_upload']['tmp_name'], $file_path);
}

$sql = "INSERT INTO users 
(full_name, password, email, phone, website, search_query, dob, time_pref, datetime_pref, month_pref, week_pref, fav_color, gender, skills, range_value, hidden_value, message, image_path, file_path)
VALUES 
('$full_name', '$password', '$email', '$phone', '$website', '$search_query', '$dob', '$time_pref', '$datetime_pref', '$month_pref', '$week_pref', '$fav_color', '$gender', '$skills', '$range_value', '$hidden_value', '$message', '$image_path', '$file_path')";

if ($conn->query($sql)) {
  echo "<p style='color:green;'>✅ Record added successfully!</p>";
} else {
  echo "<p style='color:red;'>❌ Error: " . $conn->error . "</p>";
}
?>
