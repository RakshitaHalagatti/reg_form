echo "<h3>Registered Users</h3>";
echo "<table border='1' cellpadding='5'>
<tr><th>ID</th><th>Name</th><th>Email</th><th>Gender</th><th>Color</th><th>Action</th></tr>";

while($row = $result->fetch_assoc()) {
  echo "<tr>
          <td>{$row['id']}</td>
          <td>{$row['full_name']}</td>
          <td>{$row['email']}</td>
          <td>{$row['gender']}</td>
          <td><div style='width:20px;height:20px;background:{$row['fav_color']}'></div></td>
          <td>
            <button class='edit' 
              data-id='{$row['id']}'
              data-name='{$row['full_name']}'
              data-email='{$row['email']}'
              data-phone='{$row['phone']}'
              data-gender='{$row['gender']}'
              data-color='{$row['fav_color']}'>Edit</button>
            <button class='delete' data-id='{$row['id']}'>Delete</button>
          </td>
        </tr>";
}
echo "</table>";
