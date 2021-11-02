<?php
  session_start(); 
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


  </head>

  <body>
  <?php
$query="SELECT * FROM studentUser";
$result=mysql_query($query);
$name=$_POST['name'];
while($row=mysql_fetch_array($result))
{
?>
<div>
  <form name="delete" action="delete.php" method="post">
  <table border="0">
    <tr>
      <td>User Name:</td>
      <td></td>
      <td><input type="text" name="name" value='<?php echo $row["name"];?>' readonly></td>
    </tr>
    <tr>
      <td>Delete?</td>
      <td></td>
      <td><button type="button" class="btn btn-primary btn"><?php mysql_query("DELETE FROM studentUser WHERE name = $name");?></td>
    </tr>
    <tr>
      <td><input type="submit" name="delete" value="Delete"></td>
      <td></td>
    </tr>
  </table>
  </form>
</div>
<?php
}
?>
  </body>
</html>