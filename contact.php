<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dservice_name'])) $page = $_GET['dservice_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'contacts' ?>
  <?php if(empty( $_GET['dservice_name'])) $page = 'contact' ?>
 
<?php include 'include/head.php'; ?>

<title> Contact Us - <?php echo $sitename ?> </title>


<style>

.facont{
    background:#55c348;
    padding: 10px 20px;
    border-radius: 2px;
}  

</style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  <br>



    <!-- /.wrapsemibox start-->
    <div class="wrapsemibox" style="background:url('https://image.freepik.com/free-photo/brown-paper-texture-background_1373-528.jpg')">
        <br>
        <br>
        <br>
        <br>
        <style type="text/css">
            .intro-notef{
                font-size: 18px; color:#000;
            }
        </style>
        <!-- INTRO NOTE
================================================== -->
        <section class="intro-notef">
        <div class="container">
            <div class="row">
                
            <h1 style="text-align:center;">Contact Us</h1>
            <div class="row">
            <div class="col-md-4 animated fadeInRight notransition">
                
            <p>
              <strong>Address: </strong> <br> 
                            <?php echo $siteaddress ?>
            </p>
            <p>
              <strong>Phone: </strong> <?php echo $sitephone ?>
            </p>
            <p>
              <strong>Whatsapp: </strong>  050 474 0448 , 050 763 5908 
            </p>
                        
                                    
            <p>
              <strong>Email : </strong> <a href="mailto:<?php echo $sitemail ?>"><?php echo $sitemail ?></a>
            , <a href="mailto:info@alrumanah.com" style="    margin-left: 45px;" >info@alrumanah.com</a>
            </p>
                        
                        <p>
              <strong>URL: </strong> www.alrumanah.com
            </p>
            

                
            </div>
            <div class="col-md-8 animated fadeInLeft notransition">
                
                    <div class="done">
                        <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            Your message has been sent. Thank you!
                        </div>
                    </div>
                    <h4 class="" style="text-align:center;    font-size: 24px;">Get in Touch</h4>
                    
                    <form method="post" action="" id="contactform">
                        <div class="form">
                            <input class="col-md-6" type="text" name="name" placeholder="Name">
                            <input class="col-md-6" type="text" name="email" placeholder="E-mail">
                            
                            <input class="col-md-6" type="text" name="phone" placeholder="Phone / Mobile">
                            <input class="col-md-6" type="text" name="sub" placeholder="Subject">
                            
                            <textarea class="col-md-12" name="msg" rows="7" placeholder="Message"></textarea>
                            <input type="submit" style="    padding: 15px 30px;" name="submit" class="btn" value="Send">
                        </div>
                    </form>
                    

<?php
if(isset($_POST["submit"])){
// Checking For Blank Fields..
if($_POST["name"]==""||$_POST["email"]==""||$_POST["sub"]==""||$_POST["msg"]==""){
echo "Fill All Fields..";
}else{
// Check if the "Sender's Email" input field is filled out
$email=$_POST['email'];
// Sanitize E-mail Address
$email =filter_var($email, FILTER_SANITIZE_EMAIL);
// Validate E-mail Address
$email= filter_var($email, FILTER_VALIDATE_EMAIL);
if (!$email){
echo "Invalid Sender's Email";
}
else{
$subject = $_POST['sub'];
$message = $_POST['msg'];
$headers = 'From:'. $email . "rn"; // Sender's Email
// Message lines should not exceed 70 characters (PHP rule), so wrap it
$message = wordwrap($message, 70);
// Send Mail By PHP Mail Function
mail("sales@alrumanah.com", $subject, $message, $headers);
echo "Your mail has been sent successfuly ! Thank you for your feedback";
}
}
}
?>


            </div>
            </div>
                
            </div>
        </div>
        </section>
    </div>
</div>
        <!-- /.intro-note end-->
        <!-- SERVICE BOXES
================================================== -->
    



    <?php include 'include/footer.php'; ?>



</div>
</body>

</html>

