<?php 
session_start();
if(isset($_SESSION['actid'])){
  header("location:profile.php");
}
?>


<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<?php include 'include/head.php'; ?>
	<!-- Document Title
	============================================= -->
	<title>Login</title>

	<?php $link="blank" ?>

</head>



<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<?php 	include 'include/header.php'; ?>

	


		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

<div class="row">
<div class="col-md-3">
</div>
<div class="col-md-6">

	


						<div class="tab-container">

							<div class="tab-content clearfix" id="tab-login">
								<div class="card nobottommargin">
									<div class="card-body" style="padding: 40px;">
										<form action="" method="post">
								
											<h1 class="text-center">
          <a href="">Login</a> - <a href="signup.php"> Sign Up </a>
        </h1>
        <form action="" method="post">
          <div class="form-group">
            <input type="email" class="form-control" name="username" placeholder="Email" type="text">
          </div>
          <div class="form-group">
            <input class="form-control" name="password" placeholder="Password" type="password">
          </div>
          <div class="form-group">

            <input type="submit" name="login" class="btn btn-info" value="Submit >">
          </div>
          
        </form>


        <?php
                       
           if (isset($_POST['login'])) {
                       if (empty($_POST['username']) || empty($_POST['password'])) {
                       echo "Email or Password is empty";
                       }
                       else
                       {
                       $username=$_POST['username'];
                       $password=$_POST['password'];
                       $username3 = stripslashes($username);
                       $username2 = str_replace("<", "", $username3);
                       $username1 = str_replace(">", "", $username2);
                       $username = str_replace("'", "", $username1);
                       $password3 = stripslashes($password);
                       $password2 = str_replace("<", "", $password3);
                       $password1 = str_replace(">", "", $password2);
                       $password = str_replace("'", "", $password1);



                       $query = mysqli_query($con,"SELECT * from users where password='$password' AND email='$username' ")or die(mysqli_error($con));
                       $rows = mysqli_num_rows($query);
                       if ($rows == 1) {



      $rowsx =mysqli_query($con,"SELECT * from users where password='$password' AND email='$username' LIMIT 1 " ) or die(mysqli_error($con));
      while($rowx=mysqli_fetch_array($rowsx)){
        $actid = $rowx['id'];
        $block = $rowx['block'];
        $blockres = $rowx['blockres'];
    }

                      if($block==0){
                       $_SESSION['actid']=$actid; // Initializing Session
                       header("location:profile.php"); // Redirecting To Other Page
                     }else{
                      echo "Account Blocked: ".$blockres;
                     }
                       } else {
                        echo "Email or Password is Invalid";

                       }
                       }
                       }

                       ?>



									</div>
								</div>
							</div>



						</div>

					</div>

				</div>

			</div>

		</section><!-- #content end -->

<script type="text/javascript">
	
  function check() {

    pass = document.getElementById('pass').value;
    repass = document.getElementById('repass').value;

    if (pass!=repass) { 
      document.getElementById('submit').disabled=true;
    }else{
      document.getElementById('submit').disabled=false;
    }

  }


</script>




		<!-- Footer
		============================================= -->
	
		<?php 	include 'include/footer.php'; ?>

			
	</div><!-- #wrapper end -->

</body>
</html>