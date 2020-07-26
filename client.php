<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['client_name'])) $page = $_GET['client_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['client_name'])) $page = Null ?>
 
 
  <?php include 'include/head.php'; ?>

  <title>Clients Categories </title>


 
<style>
    .hbg{
    width: auto;
    height:auto;
    background: linear-gradient(90deg, #49c32c, #105d05);
    position: absolute;
    left: 0px;
    padding: 10px 10px 0px 7%;
    color: #ffffff;
    
    }
    .pbg{
        background: #ffffff;
    padding: 3rem 4rem;
    box-shadow: 0px 0px 30px rgba(115, 128, 157, 0.1);
    -webkit-box-shadow: 10px 10px 50px rgba(115, 157, 116, 0.51);
    border-radius: 1.25rem;
    
    }
</style>


<?php
  if(isset($_POST['saveinfo'])){
    $msg="Unsuccessful" ;

    $id=$_POST['saveinfo'];



    if (!empty($_FILES['image1']['name'])) {
        
      // Get image name
      $image = $_FILES['image1']['name'];
      $image = md5(uniqid())  . "1.png";
      
      // image file directory
      $target = "../images/covers/".basename($image);

      $data=mysqli_query($con,"UPDATE pages SET `cover`='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['image1']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }





    mysqli_query($con, $sql) ;
    ($msg=mysqli_error($con));
    if(empty($msg))  $msg="Saved";

    header("location: cpages-$slug");


  }

  ?>



</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  
  <?php
  $rows =mysqli_query($con,"SELECT * FROM pages where slug='clients' " ) or die(mysqli_error($con));


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
<br>



  <div class="container pbg">

    
    <div class="latest-projects text-center">
    
    <h2>Clients&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
    
    <div class="clearfix">&nbsp;</div>
    <div class="row">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM clients  ORDER BY ordr" ) or die(mysqli_error($con));
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
                 <img  class="simg" src="images/clients/<?php echo $img ?>" alt="" id="img1c" />
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

