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



    <!--Brings up an error message if you did not login first-->
    <?php

      if (isset($_SESSION['noLogin']) && $_SESSION['noLogin'] == "true") {

        echo "<p style='color: red; text-align: center;'>Please login first!</p> ";
      } 
    ?>



    <!--Login form-->
    <div class="container" style="margin-top: 30px;">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <form class="text-center border border-primary p-5 rounded mb-0" action="" method="post">

                <p class="h4 mb-4">Login</p>

                <!-- Username -->
                <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Username" name="username">

                <!-- Password -->
                <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password" name="password">

                <!-- Sign in button -->
                <button class="btn btn-info btn-block my-4" type="submit">Log in</button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    

    

    <?php

    //Object for DB class
    $db = new DB();


    if(isset($_POST['username']) && isset($_POST['password'])){
        
      //Get the username and password
      $_SESSION['user'] = $_POST['username'];
      $_SESSION['pass'] = $_POST['password'];


      //Check if the user exists in the database
      $id = $db->checkAttendee($_SESSION['user'],$_SESSION['pass']);


      //Check if the user can modify users and then check 
      //if they can modify events that they are tied to
      $check1 = $db->checkCanModifyUser($id);
      $check2 = $db->checkCanModifyOwnEvent($id);


      $_SESSION['eventTable'] = $db->getEventDataAsTable();

      $_SESSION['attendeeTable'] = $db->getAttendeeDataAsTable();


      //LoggedIn session variable for later use
      $_SESSION['loggedIn'] = "true";


      //Cookie stuff
      $currentDate = date("F j, Y h:i A");
      setcookie('loggedIn',$currentDate,time() + 600,'/','serenity.ist.rit.edu',false);


      //The two previous checks determine if the user is an 
      //admin, event manager, or normal attendee
      if ($check1 == 'true' && $check2 == 'true') { //If all true, user is an admin

        header('Location: admin.php');
      }

      else if($check1 == 'false' && $check2 == 'false'){ //If both checks are false, user is a normal attendee

        header('Location: attendees.php');
      }
    }
    ?>

  </body>
</html>