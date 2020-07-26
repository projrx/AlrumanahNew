 <!DOCTYPE html>
 <html dir="ltr" lang="en-US">
 <head>

 	<?php include 'include/head.php'; ?>
  <?php include 'include/carthead.php'; ?>


<!-- update Address  -->



<?php 

  if(isset($_POST['savepro'])){
    $msg="Unsuccessful" ;

    $id=$actid;
    $name=$_POST['newactname'];
    $actemail=$_POST['newactemail'];
    $city = $_POST['city'];
    $phone = $_POST['phone'];
    $newpassword=$_POST['newactpass'];


    if (!empty($_FILES['img']['name'])) {

        // Get image name
      $image = $_FILES['img']['name'];
      $image = md5(uniqid())  . "1.png";

        // image file directory
      $target = "images/users/".basename($image);

      $data=mysqli_query($con,"UPDATE users SET `img`='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['img']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }      

      }



      if (!empty($newpassword)){

      $sql = "UPDATE users SET `password` = '$newpassword' WHERE  `id`='$id' ";
      mysqli_query($con, $sql) ;


    }

      $sql = "UPDATE users SET `name` = '$name',`email` = '$actemail',`bcity`='$city',`bmobile`='$phone'  WHERE  `id`='$id' " ;


      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));
      if(empty($msg))  $msg="Updated";

header("location:profile.php"); // Redirecting To Other Page
      
    }
  ?>




	<!-- Document Title
		============================================= -->
		<title>Edit Profile  - <?php echo $sitename ?> </title>

		<?php $link="account" ?>
		<style type="text/css">
			.current{
				background: #98483d;
				color:#fff;
				}.current a{
					color:#fff;
				}
				.oimg{
					max-width: 50px;
				}

				.noti >ul > li {
					margin:20px;
					border-top-width: 1px !important;
				}
			</style>

		</head>

		<body class="stretched">

	<!-- Document Wrapper
		============================================= -->
		<div id="wrapper" class="clearfix">

		<!-- Header
			============================================= -->
			<?php 	include 'include/header.php'; ?>

                                <form method="post" action="" enctype="multipart/form-data">
			<br>
			<div class="row" style="margin-right: 0px">

				<div class="col-md-1">
				</div>
    <!-- get single row data from database -->

      <?php

      $rows =mysqli_query($con,"SELECT * FROM users WHERE id ='$actid'" ) or die(mysqli_error($con));

      while($row=mysqli_fetch_array($rows)){

        $bfirstname = $row['bfname'];
        $blastname = $row['blname'];
        $bpostalcode = $row['bpostal'];
        $baddress1 = $row['baddress1'];
        $baddress2 = $row['baddress2'];
        $bcity = $row['bcity'];
        $bphone = $row['bmobile'];
        $bemail = $row['bemail'];
        $sfirstname = $row['sfname'];
        $slastname = $row['slname'];
        $spostalcode = $row['spostal'];
        $saddress1 = $row['saddress1'];
        $saddress2 = $row['saddress2'];
        $scity = $row['scity'];
        $sphone = $row['smobile'];
        $semail = $row['semail'];

      }

      ?>


  
				<div class="col-md-10">

					<h2>Edit Profile: </h2>
          <br>
          <br>

          <div class="row">


            <div class="col-md-12 text-center">
              <img src="images/users/<?php echo $actpic ?>" style="width: 200px">
              <br>
              <br>
              <center>
              <input type="file" name="img">
                
              </center>
             </div>


           </div>
          <br>

          <div class="row">

            <div class="col-md-1 text-right"> </div>
            <div class="col-md-1 text-right">Name: </div>
            <div class="col-md-4">
              <input type="text" name="newactname" value="<?php echo $actname ?>" class="form-control">
             </div>

            <div class="col-md-1 text-right">E-mail: </div>
            <div class="col-md-4">
              <input type="text" name="newactemail" value="<?php echo $actemail ?>" class="form-control">
             </div>
           </div>
           <br><br>
          <div class="row">

        <div class="col-md-2"> 
        </div>
        <div class="col-md-4 text-center"> 
          City:
          <select style="border:solid 1px;" class="form-control myform" id="city" name="city">
           <?php if(!empty($bcity)) { ?><option value="<?php echo $bcity ;?>"><?php echo $bcity ;?></option><?php } ?>

           <!-- get single row data from database -->

           <?php

           $rows =mysqli_query($con,"SELECT * FROM cities" ) or die(mysqli_error($con));

           while($row=mysqli_fetch_array($rows)){

            $city = $row['city'];

            ?>


            <option value="<?php echo $city ;?>"><?php echo $city ;?></option>

          <?php } ?>
        </select>


      </div>
        <div class="col-md-4 text-center">     

       Phone:
       <input type="number" value="<?php if(!empty($bphone)) echo $bphone ; ?>" class="form-control myform" id="phone" name="phone">

     </div>

          </div>
          <br><Br>
          <div class="row">

            <div class="col-md-2 text-right"> </div>
            <div class="col-md-2 text-right">New Password: </div>
            <div class="col-md-6">
              <input type="password" name="newactpass" value="<?php echo $actemail ?>" class="form-control">
             </div>
           </div>
             <br>
             <br>
             <br>







<div class="row" style="padding-bottom:50px">
  <div class="col-md-2">
  </div>
  <div class="col-md-8 text-center">

  <button class="btn bgcolor" name="savepro">Save <i class="fa fa-save"></i> </button>


</div>
</div>

</form>


				</div>
			</div>

		</div>






		<!-- Footer
			============================================= -->

			<?php 	include 'include/footer.php'; ?>

			
<script>        
 $("#toshipping_checkbox").on("click",function(){
  var ship = $(this).is(":checked");
  $("[id^='shipping_']").each(function(){
    var tmpID = this.id.split('shipping_')[1];
    $(this).val(ship?$("#"+tmpID).val():"");
  });
});        </script>   
		</div><!-- #wrapper end -->

	</body>
	</html>