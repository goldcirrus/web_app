<?php  
  if (!isset($_SERVER['HTTPS'])) {
    $url = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];  // start with /...
		   
    header("Location: " . $url);  // Redirect - 302
	
    exit();                         // should be before any output
  }                               

?>




<?php
//use session to track user authentificatoin. user authentification:database is demo, table is user. 
session_start();       //step1: create a new sesssion


//check whether the user's id and password match stored value in database:"demo".
if (isset($_POST['userid']) && isset($_POST['password']))   // if the user had submitted form input and tried to log in
{
  // get user's submitted form input and compare them to stored user's id&password in database:"demo", table:"users"'s columns value to log in
  $userid = $_POST['userid'];
  $password = $_POST['password'];
  
  $options = array("cost"=>4);      //create an association array, key is "cost", value is 4, for hashpassword function
  $hashPassword = password_hash($password,PASSWORD_BCRYPT,$options);    //hash plain text password, $hashPassword is stored in the database

  $db_conn = new mysqli("localhost","root","","demo");   //connect to database:demo

  if (mysqli_connect_errno()) {
    echo 'Connection to database failed:'.mysqli_connect_error();
    exit();
  }
                 //make a query to database:"demo" table:"users" where column email's value = form's userid input.
  $sql = "select * from users where email='".$userid."'" ;      
			
  $rs = mysqli_query($db_conn,$sql);
  $numRows = mysqli_num_rows($rs);
	
	if($numRows  == 1){      //if query ok, one row is fetched
		$row = mysqli_fetch_assoc($rs);                       //fetch a row from query result
		if(password_verify($password,$row['password'])){      //verify password by hatch function. check-match(user_input_password, stored_password)
			echo "Password verified";
			$_SESSION['valid_user'] = $userid;               //if pass user validation, step2: register a session variable
		}
		else{
			echo "User found, but Wrong Password";
		}
	}
	else{
		echo "No User found";
	}

  
  
  $db_conn->close();
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <title>Home Page</title>
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

  
<div class="container">
  <div class="mt-5 mb-3 clearfix">
     <h2 class="pull-left">User loing in </h2> 
  </div> 
  
  
  
  <div>
  <?php
//use session validation to check wheher a user is logged in or not. if logged in show the login approved contents(go to the page show the doctors), else show the warning, and ask user to regsiter a new account 
  if (isset($_SESSION['valid_user']))   //if user pass login check     
  {
    //only if user validation variable exist(when user input_id&password pass validation, go to next page:doctors.php)
    header('Location: doctors.php');  
    //echo '<a href="logout.php">go to Log out page</a></p>';
  }
  else    //else when session is not valid:(user failed id&password check)== user is not logged in
  {
    if (isset($userid))  //els if user input user_id&password in form's input, but failed password check. 
    {
            echo '<p>Could not log you in.</p>';
    }
    else
    {
             // else When user not enter user_id&password in form's input,ask user to register a new account: goes to newuser_register.php page to register a new user id&password in database:"demo", table:"users"
	  
	         echo 'You are not logged in. If you are new to here, please register yourself';
			 echo '<p></p>';
             echo '<a href="newuser_register.php" class="btn btn-primary">create new account</a>';
			 echo '<p></p>';
      
      
    }

// provide form to let user to enter log in: user id&password
	
    echo '<form action="' .$_SERVER['PHP_SELF']. '" method="post">';
     
      echo '<p>Login Now!</p>';
	  
        echo '<p><label for="userid">UserID:</label>';
        echo '<input type="text" name="userid" id="userid" size="30"/></p>';    //name goes to$_POST['userid']
   
        echo '<p><label for="password">Password:</label>';
        echo '<input type="password" name="password" id="password" size="30"/></p>';    //name goes to $_POST['password']
		
      echo '</fieldset>';
	
      echo '<button type="submit" name="login" class="btn btn-primary">Login</button>';
    echo '</form>';
  }
  
  ?>  
  </div>
  
  
</div>







<?php   
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]. "/incl/";
include($INC_DIR. "footer.php");
?>

</body>
</html>