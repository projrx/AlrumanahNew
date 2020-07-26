<?php include 'include/connect.php'; ?>
<?php 
session_start();
if(isset($_SESSION['actid'])){
 $actid= $_SESSION['actid'];  // Initializing Session with value of PHP Variable 
  $rows =mysqli_query($con,"SELECT * FROM users where id='$actid'" ) or die(mysqli_error($con));
  while($row=mysqli_fetch_array($rows)){
    $actname = $row['name'];       
    $actemail = $row['email'];       
    $actpic = $row['img'];       

  }
}
// Store Session Data

 ?>
<?php
    $rows =mysqli_query($con,"SELECT * FROM pages where slug='$link' AND (slug!='blogs') " ) or die(mysqli_error($con));
    while($row=mysqli_fetch_array($rows)){
      $pagemetakey = $row['metak'];  
      $pagemetadesp = $row['metad']; ?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="<?php echo $pagemetakey ?>">
<meta name="description" content="<?php echo $pagemetadesp ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">

<?php } ?>

<!-- PLUGINS CSS STYLE -->
<link rel="icon" type="image/png" href="images/logo.png">
<link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/selectbox/select_option1.css">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugins/flexslider/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" href="plugins/calender/fullcalendar.min.css">
<link rel="stylesheet" href="plugins/animate.css">
<link rel="stylesheet" href="plugins/pop-up/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="plugins/rs-plugin/css/settings.css" media="screen">
<link rel="stylesheet" type="text/css" href="plugins/owl-carousel/owl.carousel.css" media="screen">
<!-- CUSTOM CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/theme-1.css">
<link rel="stylesheet" href="css/default.css" id="option_color">
<link rel="stylesheet" href="css/custom.css">


    <!-- Style -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive -->
    <link href="css/responsive.css" rel="stylesheet">
    <!-- Choose Layout -->
    <link href="css/layout-semiboxed.css" rel="stylesheet">
    <!-- Choose Skin -->
    <link href="css/skin-red.css" rel="stylesheet">
    <!-- Demo -->
    <link rel="stylesheet" id="main-color" href="css/skin-red.css" media="screen"/>
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.png">

    <link rel='stylesheet' href='css/simplelightbox.min.css' >
    <link rel="stylesheet" href="css/main.css">

<style>

.navbar-nav > li > a {
    color: #fff;
}
.wowmenu.tiny {
    top: 0;
    background: #2f2f2f !important;
}

.intro-note h1 {
    text-transform: capitalize;
    font-size: 32px;
    margin-bottom: 21px;
    text-align: center;
}
    .icon-bar {
      position: fixed;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      transform: translateY(-50%);
      z-index: 99999999;
    }

    .icon-bar a {
      display: block;
      text-align: center;
      padding: 16px;
      transition: all 0.3s ease;
      color: white;
      font-size: 20px;
    }

    .icon-bar a:hover {
      background-color: #000;
    }

    .facebook {
      background: #3B5998;
      color: white;
    }

    .twitter {
      background: #55ACEE;
      color: white;
    }

    .google {
      background: #dd4b39;
      color: white;
    }

    .linkedin {
      background: #007bb5;
      color: white;
    }

    .youtube {
      background: #bb0000;
      color: white;
    }

    .content {
      margin-left: 75px;
      font-size: 30px;
    }
    
    body{
        background: url('images/bg.jpg') repeat !important;
    }

</style>