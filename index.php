<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <?php if(empty($_GET['page_name'])) $link ='home';  ?>
  <?php include 'include/head.php'; ?>
  
<title><?php echo $sitename ?></title>

  <style>

    ul > li > a > p > img{
      display:none;
    }

    ul > li > a > img{
      display:none;
    }


    .homecard{
      max-height: 410px;
      overflow: hidden;
    }


  </style>



</head>

<body class="body-wrapper">

  <div class="main_wrapper">

    <?php include 'include/header.php'; ?>



  <!-- CAROUSEL
================================================== -->
  <section class="carousel carousel-fade slide home-slider" id="c-slide" data-ride="carousel" data-interval="4500" data-pause="false">


  <div class="carousel-inner">
          <?php

      $result =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $rowcount=mysqli_num_rows($result);
      $rows =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row=mysqli_fetch_array($rows)){

        $name = $row['name']; 
        $img = $row['img']; 
        $ordr = $row['ordr']; 
        $id = $row['id']; 

        $n++;

        ?>
    <div class="item <?php if($n==1) echo "active" ?>" style="background:url(images/slider/<?php echo $img ; ?>);"></div>
  <?php } ?>


        
  </div>
  <!-- /.carousel-inner -->
  <a class="left carousel-control animated fadeInLeft" href="#c-slide" data-slide="prev"><i class="icon-angle-left"></i></a>
  <a class="right carousel-control animated fadeInRight" href="#c-slide" data-slide="next"><i class="icon-angle-right"></i></a>
  </section>
  <!-- /.carousel end-->
  

    
    <!-- /.wrapsemibox start-->
    <div class="wrapsemibox">
      <div class="semiboxshadow text-center" style="">
        <img src="img/shp.png" class="img-responsive" alt="">
      </div>





    <?php

    $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $homepost = $row['post']; 
      $homeimg = $row['img']; 



    }
    ?>


    <!-- INTRO NOTE
      ================================================== -->
      <section class="intro-note">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              
              
            <?php echo $homepost ?>


            </div>
          </div>
        </div>
      </section>
      <!-- /.intro-note end-->

    <section id="projects" class="projects-section section" style="background: #ececec;">
      <div class="container">
        <center>
          <br>
          <br>
          <h2> Products Categories:</h2>
          <br>
          <br>
        </center>
        <div class="row">




<?php $rows =mysqli_query($con,"SELECT * FROM productcat ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;
                while($row=mysqli_fetch_array($rows)){
                    $name = $row['name'];
                     $slug = $row['slug'];
                     $id = $row['id'];
                     $img = $row['img'];
                  ?>

          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-<?php echo $img ?> faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title"><?php echo $name ?> </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>

<?php $rowsx =mysqli_query($con,"SELECT * FROM productsubcat where pid='$id' ORDER BY ordr" ) or die(mysqli_error($con));
                while($rowx=mysqli_fetch_array($rowsx)){
                    $sid = $rowx['id'];
                    $name = $rowx['name'];
                    $subslug = $rowx['slug'];

                    
        $rowsq =mysqli_query($con,"SELECT * FROM product where pid='$sid'" ) or die(mysqli_error($con));        $rowcount=mysqli_num_rows($rowsq);


                    ?>
                  <li class="bli"><a href="sproducts-<?php echo $subslug ?>"><?php echo $name ?> <i class="badge badgeli"><?php echo $rowcount ?></i> </a> </li>

                <?php } ?>

                </ul>

              </div>

            </div>


          </div>
<?php } ?>


</div>

      

          <?php

    $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $msg2 = $row['msg']; 
      $vidimg = $row['vidimg']; 
      $vid = $row['vid']; 
      $vidpost = $row['vidpost']; 

    }
    ?>

    <?php echo $vidpost ?>


  </div>
</section>


    <section class="home-features" style="background:url(images/bg.jpg) repeat !important; padding-bottom:30px;">
      <div class="container animated fadeInUpNow notransition">
        <h1 class=" text-center" style="text-decoration: underline;">Certificates</h1>
        
        <div class="row">
          
          <div class="col-md-2"></div>
          <div class="col-md-4">
            <center>
              
              <img src="images/cer1.jpg" name="Certificate HACCP" alt="Certificate HACCP" style="width: 180px; margin-top: 40px;">
            </center>
            
          </div>
          <div class="col-md-4">
            <center>
              
              <img src="images/cer2.jpg"  name="HACCP Global Standard" alt="HACCP Global Standard" style="margin-top:60px;">
            </center>
            
            
          </div>
          
        </div>
        
      </div>
    </section>
    

        <br><br>
        <br><br>

        <center><h2>Latest News & Suggestions</h2></center>


        <br><br>
        <div class="container">
        <div class="row" style="">

                <?php

                $rows =mysqli_query($con,"SELECT * FROM blogs ORDER BY ordr LIMIt 4" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

               $slug = $row['slug']; 
               $name = $row['name']; 
               $metak = $row['metak']; 
               $metad = $row['metad']; 
               $ordr = $row['ordr']; 
               $id = $row['id']; 
               $pslug = $row['pslug']; 
               $desp = $row['post']; 
               $cover = $row['cover']; 


                  ?>
          <div class="col-md-3">
            <div class="card">
              <a href="pages-<?php echo $slug ?>">
              <div class="">
                <img src="images/covers/<?php echo $cover ?>" class="cardimg">
              </div>
              <div class="cardbody">

                <h4><?php echo $name ?></h4>
               

                  <p>
                    <?php echo substr($desp,0,100) ?>...
                  </p>


                </div>
              </a>
              </div>
            

            </div>
          <?php } ?>


        </div>
      </div>




  </div>
</div>


  <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

