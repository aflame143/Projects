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

    <!--Navbar-->
    
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">RIT Esports Tournament Scheduler</a>
      </div>
      <ul class="nav navbar-nav">
        <li> <a href="#">Events</a></li>
        <li><a href="registrations.php">Register</a></li>
        <li class = "active"><a href="login.php">Login</a></li>
      </ul>
    </div>
  </nav>



    <!-- Content -->
	<form action="addmember.php" method="post">
    <div class="content">
      <h2>Add Member</h2>
      <hr>
      <div class="container">
        <div class="row">
		<div class="row">
          <div align="center" class="col-2"><button style="width:50%;margin:auto;height:50px;margin-bottom:20px;" type="button" class="btn btn-primary btn" onclick="addMember()">Add Member</button></div>
        </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="universityID">User ID</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="userIdNumber" name="userIdNumber" placeholder="Student UID..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="password">Default Password</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="password" name="password" placeholder="Student password..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
          <div class="row">
            <div align="center" class="col-25">
				<label for="name">Full Name</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="name" name="name" placeholder="Student full name..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="email">Email</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="email" name="email" placeholder="Student email..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="interest">Game Interest</label> 
			</div>	
            <div align="center" class="col-75">
              <select id="interest" name="interest" style="width:50%;height:50px;">
				<option value="CS:GO">CS:GO</option>
				<option value="League">League of Legends</option>
				<option value="Dota 2">Dota 2</option>
			  </select>
            </div>
          </div>
        </div>
      </div>
    </div>
	<input type="submit" value="Submit">
	</form>
	<?php
			$servername = "localhost";
			$username = "student";
			$password = "root";
			$dbname = "esportsScheduler";

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);
			// Check connection
			if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
			}

$sql="INSERT INTO studentUser (userIdNumber, password, name, email, interest)

VALUES

('$_POST[userIdNumber]','$_POST[password]','$_POST[name]','$_POST[email]','$_POST[interest]')";

 

if (!mysql_query($sql,$conn))

  {

  die('Error: ' . mysql_error());

  }

echo "1 record added";

 

mysql_close($conn)

?>
  </body>
</html>
