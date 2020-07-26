<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['product_name'])) $page = $_GET['product_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'products' ?>
  <?php if(empty( $_GET['product_name'])) $page = 'products' ?>

  <?php include 'include/head.php';
  
  			
  			function truncateString($str, $chars, $to_space, $replacement="...") {
   if($chars > strlen($str)) return $str;

   $str = substr($str, 0, $chars);
   $space_pos = strrpos($str, " ");
   if($to_space && $space_pos >= 0) 
       $str = substr($str, 0, strrpos($str, " "));

   return($str . $replacement);
}

?>

  <title>Products Categories </title>


</head>

<body class="body-wrapper">
    

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>

      <section id="projects" class="projects-section section" style="background: #ececec;">
  <div class="container">


<!-- INTRO NOTE
================================================== -->
    <section class="intro-note">
    <div class="container">
      <div class="row">
        <div class="row">
                
                
          <h1 style="text-decoration: underline;">Products</h1>

          
              <?php $allrowsx =mysqli_query($con,"SELECT id,name,img FROM productcat ORDER BY ordr" ) or die(mysqli_error($con));
            while($allrowx=mysqli_fetch_array($allrowsx)){
             $pid = $allrowx['id'];
             $pname = $allrowx['name']; 
             $img = $allrowx['img']; 
             ?>
             
                        <div class="col-md-4">
                            
                            <div class="prodcut-area">
                                <a href="dproducts-<?php echo $pid; ?>">
                              <div class="product-img" style="width:100%">
                                  <img src="images/products/<?php echo  $img ;?>" style="height:250px;" class="img-responsive"> 
                                  <center>
                                        <h2><?php echo $pname ;?></h2>
                                      <p><a href="contact.php"  class="detail-btn" type="button">Order Now </a></p>
                                         </center>
                                </div>
                               </a>
                            </div>
                        </div>
                        
                        <?php } ?>
        </div>
      </div>
    </div>
    </section>
    <!-- /.intro-note end-->
    <!-- SERVICE BOXES
================================================== -->
  
        <br><br>




</div>
</div>

</section>


    
    





    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

