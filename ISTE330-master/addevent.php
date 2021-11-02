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
	<form action="addevent.php" method="post">
    <div class="content">
      <h2>Add Event</h2>
      <hr>
      <div class="container">
        <div class="row">
		  <div class="row">
            <div align="center" class="col-25">
				<label for="gameName">Game Name</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="gameName" name="gameName" placeholder="Game Name..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="gameGenre">Game Genre</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="gameGenre" name="gameGenre" placeholder="Game Genre..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
          <div class="row">
            <div align="center" class="col-25">
				<label for="tournamentDate">Tournament Date</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="tournamentDate" name="tournamentDate" placeholder="Tournament Date..." style="width:50%;height:50px;margin-bottom:20px;">
            </div>
          </div>
		  <div class="row">
            <div align="center" class="col-25">
				<label for="tournamentLocation">Tournament Location</label> 
			</div>	
            <div align="center" class="col-75">
              <input type="text" id="tournamentLocation" name="tournamentLocation" placeholder="Tournament Location..." style="width:50%;height:50px;margin-bottom:20px;">
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

$sql="INSERT INTO event (gameName, gameGenre, tournamentDate, tournamentLocation)

VALUES

('$_POST[gameName]','$_POST[gameGenre]','$_POST[tournamentDate]','$_POST[tournamentLocation]')";

 

if (!mysql_query($sql,$conn))

  {

  die('Error: ' . mysql_error());

  }

echo "1 record added";

 

mysql_close($conn)

?>
  </body>
</html>