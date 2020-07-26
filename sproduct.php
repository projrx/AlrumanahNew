<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['sproduct_name'])) $page = $_GET['sproduct_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'products'  ?>
  <?php if(empty( $_GET['sproduct_name'])) $page = 'products'  ?>


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



  <title> <?php echo  $page ?> Products </title>

<style type="text/css">
  #img1 {
    color: rgb(102, 102, 102);
    height: 200px;
    width: 210px;
    text-align: center;
    text-decoration: none solid rgb(102, 102, 102);
    text-size-adjust: 100%;
    vertical-align: middle;
    column-rule-color: rgb(102, 102, 102);
    perspective-origin: 85.4063px 85.4063px;
    transform-origin: 85.4063px 85.4063px;
    caret-color: rgb(102, 102, 102);
    border: 2px solid #6ebe45;
    border-radius: 5%;
    font: normal normal 300 normal 0px / 0px Lato, Arial, serif;
    outline: rgb(102, 102, 102) none 0px;
    padding: 15px
}

</style>
</head>


<body class="body-wrapper">
    

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>

  <div class="container">

    
    <div class="latest-products text-center">
    
    <h2 style="text-transform: capitalize;"><?php echo $page ?> Products</h2>
    
    <div class="clearfix">&nbsp;</div>
    
    

	                	<div class="row ">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM product where pslug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $slug = $row['slug'];
      $desp = $row['desp'];
      $id = $row['id'];
      $img = $row['img1'];
      if(empty($desp)) $desp='...';
      
      


      ?>

                   <div class="item col-md-4">
                       <div class="item-inner">
                                     <br>



                             <div class="img">
                                <center>

                               <figure id="fig1">
                                <a href="dproducts-<?php echo $slug ?>">
                                 <img  class="simg" src="images/products/<?php echo $img ?>" alt="" id="img1" />
                               </a>
                               </figure>
                             </center>

                             </div>
                             
                                     <h4 class="heading1"><?php echo $name ?></h4>
                             <br>

                               
                               
                       </div>
                       </div>
                                  
                    <?php $n++; $img='Null'; } ?>
                    
            </div>
            </div>
                      
        </div><!--//products-->
    </div><!--//containers-->


    <br>
    <br>





    <?php include 'include/brands.php'; ?>
    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

