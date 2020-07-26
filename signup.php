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
	<title>Sign Up
  </title>

	<?php $link="blank" ?>

</head>



  <?php
  if(isset($_POST['submit'])){

    $msg="Unsuccessful" ;


    $name=$_POST['name'];
    $email=$_POST['email'];

    $password=$_POST['password'];


    $query = mysqli_query($con,"SELECT * from users where email='$email'")or die(mysqli_error($con));
    $em = mysqli_num_rows($query);

   if ($em > 0) {
      $error = 'Email is Already Registered.';
    }else{


      $img='avatar.png';

      $data=mysqli_query($con,"INSERT INTO users (name,email,password,img)VALUES ('$name','$email','$password','$img')")or die( mysqli_error($con) );

  $rowsx =mysqli_query($con,"SELECT * from users where password='$password' AND email='$email' LIMIT 1 " ) or die(mysqli_error($con));
      while($rowx=mysqli_fetch_array($rowsx)){
        $actid = $rowx['id'];
    }
       
$_SESSION['actid']=$actid; // Initializing Session
header("location:editprofile.php"); // Redirecting To Other Page

}





}



?>


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
              <div class="col-md-2">
              </div>
              <div class="col-md-8">
								<div class="card nobottommargin">
									<div class="card-body" style="padding: 40px;">
										<h3 class="text-center">Register for an Account</h3>
        <center>sor<br><a href="">Login</a> </center>

          <form id="register-form" name="register-form" action="" method="post">

            <div class="col_full">
              <label>Name:</label>
              <input type="text" name="name" value="" class="form-control" required />
            </div>

            <div class="col_full">
              <label>Email Address:</label>
              <input type="email" name="email" value="" class="form-control" required />
            </div>

            <div class="col_full">
              <label>Choose Password:</label>
              <input onkeyup="check();"  type="password" id="pass" name="password" value="" class="form-control" required />
            </div>

            <div class="col_full">
              <label>Re-enter Password:</label>
              <input onkeyup="check();" type="password" id="repass" name="repassword" value="" class="form-control" required />
            </div>



            <div class="col_full text-center">
              <br><br>
              <p class="lead"> <?php if(!empty($error)) echo $error ?> </p>
            </div>


            <div class="col_full text-center">
              <br><br>
              <button disabled="" id="submit" class="btn bgcolor text-center" name="submit" value="register">Register Now</button>
            </div>

          </form>
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