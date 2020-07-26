<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['video_name'])) $page = $_GET['video_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'video' ?>
  <?php if(empty( $_GET['video_name'])) $page = 'video' ?>
 
<?php include 'include/head.php'; ?>

<title> Videos  <?php echo $sitename ?> </title>
  



</head>

<body class="body-wrapper">

  <div class="main_wrapper">
      
  <?php include 'include/header.php'; ?>
  <br>
  
      <div class="container">
  <div class="row">
      <?php

$rows =mysqli_query($con,"SELECT * FROM  videos order by ordr " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $id = $row['id'];  
  $name = $row['name'];
  
?>
  <div class="col-md-6">
       <?php echo $name ;?>
    </div>
    
    
    <?php } ?>
      
      
  </div>
  
 
 
 
         <div class="clearfix">&nbsp;</div>
     </div>
     </div>
     


    <?php include 'include/footer.php'; ?>



</div>
</body>

</html>

