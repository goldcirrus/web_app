<?php
  session_start();          //if a session already exist, use the existing session
  
   // if old session exist, store to test if they *were* logged in
  if(isset($_SESSION['valid_user'])){
	  $old_user = $_SESSION['valid_user'];
  }                                         
  
  //clear out the session variable: valid_user
  unset($_SESSION['valid_user']);        
  session_destroy();
?>

<!DOCTYPE html>
<html>
<head>
  <title>Log Out</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  

    <style type="text/css">
     
      
      label {
         width: 125px;
         float: left;
         text-align: left;
         font-weight: bold;
      }
      input {
         border: 1px solid #000;
         padding: 3px;
      }
      button {
         margin-top: 12px;
      }
    </style>
  
  <style>
  div {
    background-color: linen;
    margin: 0px 0 25px 0;
    padding: 10px;
  }
  </style>
</head>






<body>
<?php   //include header file stored in hotdoc/incl folder
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]. "/incl/";    //incl foler is in web's root directory
include($INC_DIR. "header.php");
?>

<h1>Log Out</h1>

<div>

<?php
  if (!empty($old_user))      //if $old_use has a old session variable's value
  {
    echo "<p>user $old_user have been logged out.</p>";
  }
  else
  {
    // if they weren't logged in but came to this page somehow
    echo '<p>You were not logged in, and so have not been logged out.</p>';
  }
?>
</div>

<p><a href="index.php" class="btn btn-primary ml-2">Back to Home Page</a></p>


<?php   
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]. "/incl/";
include($INC_DIR. "footer.php");
?>
</body>
</html>