<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Register</title>
    
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
    <div>
        <h2>Register for our events below!</h2>
        <form action="/register.php">
            Name:<br>
            <input type="text" name="name" value="">
            Username:<br>
            <input type="text" name="user" value="">
            <br>
            Interest:<br>
            <input type="text" name="lastname" value="">
            <br>
            Email:<br>
            <input type="text" name="email" value="">
            
            <br>
            <input type="submit" value="Submit">
          </form> 
    </div>
</body>
  </html>