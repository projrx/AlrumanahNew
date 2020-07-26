<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['brand_name'])) $page = $_GET['brand_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'brands' ?>
  <?php if(empty( $_GET['brand_name'])) $page = 'brands' ?>
  
  <?php include 'include/head.php'; ?>

  <title>Brands - <?php echo $sitename ?> </title>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  
  <?php
  $rows =mysqli_query($con,"SELECT * FROM pages where slug='brands' " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  
}
?>

  
  <div class="banner">
    <img src="images/covers/<?php echo $pagecover ?>" class="img-responsive" width="100%"> 
  </div> <!--banner ends-->


<br>



  <div class="container pbg">

    
    <div class="latest-projects text-center">
    
    <h2>brands&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
    
    <div class="clearfix">&nbsp;</div>
    <div class="row">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM brands  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $url = $row['url'];
      $img = $row['img'];
      $id = $row['id'];
      
  


      ?>

    
    <div class="col-md-6">
        <div class="item-inner">
            
  
    <div class="item col-md-6 text-right">
              <div class="img">
                  
                                <center>

                <figure id="">
                 <img  class="simg" src="images/brands/<?php echo $img ?>" alt="" id="img1c" />
                </figure>
                                </center>

              </div>
            
            
               <br>
                     
              <br>
              
             </div>
             
             
               <div class="item col-md-6">
                   <br>
                   <br>
                      <h4 class="heading1" style="    text-align: left;"><?php echo $name ?></h4>
                     
    </div>
                
          <!--//project-item-->
        </div><!--//item-inner-->
    </div><!--//item-->
    
    
    




  <?php } ?>


  </div>
  

  </div>
  

  </div>
  


    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

