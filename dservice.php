<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <?php include('include/connect.php') ?>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dservice_name'])) $page = $_GET['dservice_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['dservice_name'])) $page = Null ?>
<?php
    $rows =mysqli_query($con,"SELECT * FROM service where slug='$page' " ) or die(mysqli_error($con));
    while($row=mysqli_fetch_array($rows)){
      $proname = $row['name'];  
      $pagemetakey = $row['metak'];  
      $pagemetadesp = $row['metad']; ?>
      
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="<?php echo $pagemetakey ?>">
<meta name="description" content="<?php echo $pagemetadesp ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<?php } ?>
<title><?php echo $proname ?> - <?php echo $sitename ?> </title>


  <?php include 'include/head.php'; ?>


</head>

<style>

  .nav-tabs>li {
    float: left;
    margin-bottom: -1px;
    height: 80px;
    width: 96px !important;
  }

  ul {
    list-style-type: disc;
  }


</style>

<body class="body-wrapper">

  <div class="main_wrapper">
    <?php include 'include/header.php'; ?>
    <br>

    <?php if(!empty( $_GET['dservice_name'])){ ?>
      <div class="container">

       <div class="row">
        <div class="col-md-9">


          <?php

          $rows =mysqli_query($con,"SELECT * FROM service where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
          $n=0;

          while($row=mysqli_fetch_array($rows)){


           $proid = $row['id']; 
           $slug = $row['slug']; 
           $name = $row['name']; 
           $metak = $row['metak']; 
           $metad = $row['metad']; 
           $ordr = $row['ordr']; 
           $id = $row['id']; 
           $subid = $row['pid']; 
           $catid = $row['mid']; 
           $bid = $row['brand']; 
           $feat = $row['feat']; 
           $desp = $row['desp']; 
           $price = $row['price']; 
           $sale = $row['sale']; 
           $saleprice = $row['saleprice']; 
           $sizesm = $row['sizesm']; 
           $sizemd = $row['sizemd']; 
           $sizelg = $row['sizelg']; 
           $img1 = $row['img1']; 
           $img2 = $row['img2']; 
           $img3 = $row['img3']; 
           $img4 = $row['img4']; 
           $img5 = $row['img5']; 


           if(empty($desp)) $desp='...';




           ?>

           <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-10">
              <section class="story section--slider-thingy">
                <div class="flexslider">
                  <ul class="slides">
                   <?php for($nt=1;$nt<=$pimglimit;$nt++){ ?>
                    <?php if(!empty($row["img$nt"])){?>

                      <li class="slide text-center">
                        <center>

                          <div class="slide-image text-center">
                            <img src="images/services/<?php echo $row["img$nt"] ?>" class="slideimg" alt="placeholder image">
                          </div>
                        </center>

                      </li>
                    <?php } } ?>


                  </ul>
                </div>
              </section>
            </div>
          </div>

          <br>

          <h2>                  <?php echo  $name ?>
        </h2>

          <br>
          <br>
          <h4>Product Detail:</h4>

          <br>
          <?php echo  $desp ?>

        <?php } ?>

      </div>
    </div>
  </div>

    <?php } ?>


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








  </div>
</body>

</html>

