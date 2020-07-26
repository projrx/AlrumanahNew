<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <?php include('include/connect.php') ?>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dproduct_name'])) $page = $_GET['dproduct_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['dproduct_name'])) $page = Null ?>


  <?php
  $rows =mysqli_query($con,"SELECT * FROM productcat where id='$page' " ) or die(mysqli_error($con));
  while($row=mysqli_fetch_array($rows)){
    $proname = $row['name'];  
    ?>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="<?php echo $proname ?>">
    <meta name="description" content="<?php echo $proname ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  <?php } ?>
  <title><?php echo $proname ?> - <?php echo $sitename ?> </title>

  <?php include 'include/head.php'; ?>


  <?php 


  if(isset($_POST['addrev'])){

    $msg="Unsuccessful" ;

    $proid=$_POST['proid'];
    $rating=$_POST['rating'];
    $review1=$_POST['review'];
    $review=str_replace("'", "''", $review1);



    $data=mysqli_query($con,"INSERT INTO reviews (proid,actid,review,rating)VALUES ('$proid','$actid','$review','$rating')")or die( mysqli_error($con) ); 

    $msg="Added" ;



  }

  ?>

  <?php 


  if(isset($_POST['uprev'])){

    $msg="Unsuccessful" ;

    $id=$_POST['uprev'];
    $proid=$_POST['proid'];
    $rating=$_POST['rating'];
    $review1=$_POST['review'];
    $review=str_replace("'", "''", $review1);



    $sql = "UPDATE reviews SET `rating` = '$rating',`review` = '$review' WHERE `id` =$id";
    mysqli_query($con, $sql) ;


    $msg="Added" ;



  }

  ?>

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.2.2/flexslider-min.css">



  <style type="text/css">
    *,:before,:after { box-sizing: border-box; }

    html, body { height: 100%; }

    .flexslider {
      height: 100%;
      margin: 0;
      padding: 0;
      background: none;
      border: 0;
      overflow: hidden;
      box-shadow: none;
      .flex-viewport { height: 100%; }
      .flex-control-nav { bottom: 20px; }
      .slides {
        height: 100%;
        li { 
          height: 100%;
        }
      }
    }

    .slide-image{
      max-height: 400px;
      overflow: hidden;
      width: 500px;
    }
    .slideimg{
      height: 100%;

    }

  </style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
    <?php include 'include/header.php'; ?>
    <br>

    <div class="container">



  <div class="wrapsemibox">

    <br>
    <br>
    <!-- INTRO NOTE
================================================== -->
    <section class="intro-note">
    <div class="container">
      <div class="row">
          
        <div class="row">
            <?php $allrows =mysqli_query($con,"SELECT id,name,img1 FROM product where pid='$page' ORDER BY ordr" ) or die(mysqli_error($con));
            while($allrow=mysqli_fetch_array($allrows)){
             $proid = $allrow['id'];
             $proname = $allrow['name'];
             $img = $allrow['img1'];
               
             ?>
                
            

      
                <div class="row">
             
                        <div class="col-md-3">
                            
                            <div class="prodcut-area">
                                
                              <div class="product-img" style="width:100%; " >
                                  <img src="images/products/<?php echo  $img ;?>" class="img-responsive" style="height:200px;"> 
                                  
                                  <center>
                                      
                                  <h4><?php echo $proname; ?></h4>
                                         </center>
                                         <br>
                                </div>
                                
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
  
      </div>

    </section>
  </div>
</div>




<br><br>
<?php include 'include/footer.php'; ?>


<script src="js/flex.js"></script>
<script type="text/javascript">
  $(".flexslider").flexslider({
    animation: "slide", 
    slideshow: true,
    touch: true,
    keyboard: true,
    pauseOnHover: true
  });
</script>





<script>
  var $star_rating = $('.star-rating .fa');
  var SetRatingStar = function() {
    return $star_rating.each(function() {
      if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
        return $(this).removeClass('fa-star-o').addClass('fa-star');
      } else {
        return $(this).removeClass('fa-star').addClass('fa-star-o');
      }
    });
  };

  $star_rating.on('click', function() {
    $star_rating.siblings('input.rating-value').val($(this).data('rating'));
    return SetRatingStar();
  });

  SetRatingStar();
  $(document).ready(function() {
  });



</script>

</div>
</body>

</html>

