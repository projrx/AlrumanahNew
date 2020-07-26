<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title><?php echo $sitename ?></title>

  <?php if(empty($_GET['page_name'])) $link ='home';  ?>
  
  
  <style>

    ul > li > a > p > img{
      display:none;
    }

    ul > li > a > img{
      display:none;
    }


  </style>



</head>

<body class="body-wrapper">

  <div class="main_wrapper">

    <?php include 'include/header.php'; ?>



    <div class="banner">

      <div id="demo-1" data-zs-src='[

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

        "images/slider/<?php echo $img ; ?>"

        <?php if($n<$rowcount) echo "," ;  } ?>


        ]' 
        data-zs-overlay="dots">
        <div class="sover">
          <div style="padding-top: 15%;"></div>
          <center>

            <h2 class="htext"> <?php echo $name ?></h2>
            <br><br>

            <div class="row" style="max-width: 95%">
              <div class="col-md-3">
              </div>
              <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px">
                <input type="text" name="search" class="form-control" style="color: #fff;    background: transparent;    border: 3px solid #fff;">
              </div>
              <div class="col-md-1" style="padding-left: 0px;padding-right: 0px">
                <input type="button" class="btn form-control" name="q" value="Search" style="background: #54b948;    color: #fff;    border: 3px solid #54b948;">
              </div>

            </div>

          </center>
        </div>

      </div> 

    </div> <!--banner ends-->

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


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-desktop faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Computers & Electronics </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-home faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Home & Gardens </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Clothes <i class="badge badgeli">8</i> </a> </li>
                  <li class="bli"><a href="#">Home Tubs <i class="badge badgeli">0</i> </a> </li>
                  <li class="bli"><a href="#">Mattress <i class="badge badgeli">2</i> </a> </li>
                  <li class="bli"><a href="#">Sofa  <i class="badge badgeli">3</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">

            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
        </div>


        <br><br>

        <center><h2>Latest Reviews</h2></center>


        <br><br>

        <div class="row">

          <div class="col-md-4">
            <div class="card">
              <div class="">
                <img src="images/products/1.jpg" class="cardimg">
              </div>
              <div class="cardbody">
                <h4>Car Player X5556</h4>
                <span>
                  <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (6) </span>
                  <br>
                  <br>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                  </p>

                  <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                  By: <b> Latest User </b> 
                  <span style="float: right;"> Car Player </span>
                </div>
              </div>
            </div>


            <div class="col-md-4">
              <div class="card">
                <div class="">
                  <img src="images/products/2.jpg" class="cardimg">
                </div>
                <div class="cardbody">
                  <h4>Notebook 14"</h4>
                  <span>
                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>   (19) </span>
                    <br>
                    <br>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </p>

                    <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                    By: <b> Latest User </b> 
                    <span style="float: right;"> Car Player </span>
                  </div>
                </div>
              </div>


              <div class="col-md-4">
                <div class="card">
                  <div class="">
                    <img src="images/products/3.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> HP Hard Drive</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>

                      <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                      By: <b> Latest User </b> 
                      <span style="float: right;"> Car Player </span>
                    </div>
                  </div>
                </div>
              </div>




              <br><br>

              <center><h2>Author's Pick</h2></center>


              <br><br>

              <div class="row">

                <div class="col-md-6">
                 <div class="card">
                  <div class="row">
                    <div class="col-md-6">
                      <img src="images/products/d2.jpg">
                    </div>
                    <div class="col-md-6">

                      <div class="cardbody">
                        <h4>Bed Full Size</h4>
                        <span>
                          <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                          <br>
                          <br>
                          <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                          </p>

                          <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                          By: <b> Latest User </b> 
                          <span style="float: right;"> Car Player </span>
                        </div>
                      </div>


                    </div>
                  </div>

                </div>

                <div class="col-md-6">
                 <div class="card">
                  <div class="row">
                    <div class="col-md-6">
                      <img src="images/products/d1.jpg">
                    </div>
                    <div class="col-md-6">

                      <div class="cardbody">
                        <h4> Gym's Threadmil</h4>
                        <span>
                          <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (9) </span>
                          <br>
                          <br>
                          <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                          </p>

                          <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                          By: <b> Latest User </b> 
                          <span style="float: right;"> Car Player </span>
                        </div>
                      </div>


                    </div>
                  </div>

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

          <div class="col-md-3">
            <div class="card">
              <div class="">
                <img src="images/products/n1.jpg" class="cardimg">
              </div>
              <div class="cardbody">
                <h4>Car Player X5556</h4>
                <span>
                  <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (6) </span>
                  <br>
                  <br>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                  </p>


                </div>
              </div>
            </div>


            <div class="col-md-3">
              <div class="card">
                <div class="">
                  <img src="images/products/n2.jpg" class="cardimg">
                </div>
                <div class="cardbody">
                  <h4>The Best Restutrants in Lahore</h4>
                  <span>
                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>   (19) </span>
                    <br>
                    <br>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </p>

                  </div>
                </div>
              </div>


              <div class="col-md-3">
                <div class="card">
                  <div class="">
                    <img src="images/products/n3.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> The Most Afforable Displays</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>


                    </div>
                  </div>
                </div>

              <div class="col-md-3">
                <div class="card">
                  <div class="">
                    <img src="images/products/n4.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> USB Converting to Type C</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>


                    </div>
                  </div>
                </div>





              </div>
            </div>



              <br><br>





              


              <section id="projects" class="projects-section section">
                <div class="container">
                  <?php

                  $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
                  $n=0;

                  while($row=mysqli_fetch_array($rows)){

                    $post = $row['post']; 
                    $postimg = $row['img']; 


                  }
                  ?>

                  <div class="row">
                    <div class="col-md-6"> <?php echo $post ?> <div>
                      <h3>News &amp; Updates</h3>
                      <hr>

                      <div class="newsupdates">

                        <marquee scrollamount="2" direction="up" onmouseover=this.stop() onmouseout=this.start()>
                         <div class="features">
                          <ul>
                            <?php

                            $rows =mysqli_query($con,"SELECT * FROM marquee  ORDER BY ordr" ) or die(mysqli_error($con));
                            $n=0;

                            while($row=mysqli_fetch_array($rows)){

                              $name = $row['text']; 
                              $url = $row['url']; 
                              $img = $row['img']; 
                              $ordr = $row['ordr']; 
                              $id = $row['id']; 


                              ?>
                              <li><a href="news"><i class="fa fa-check-circle-o"></i><?php echo $name ?></a></li>
                            <?php } ?>
                          </ul>
                        </div>
                      </marquee> 

                    </div>
                  </div>

                </div>
                <div class="col-md-6">

                 <img src="images/<?php echo $postimg ?>" class="img-responsive"> 
               </div>


               <div class="clearfix">&nbsp;</div>

               <div class="latest-projects text-center">

                <h2>Featured Services</h2>

                <div class="clearfix">&nbsp;</div>

                <?php

                $rows =mysqli_query($con,"SELECT * FROM service WHERE feat=1  ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                  $name = $row['name'];
                  $slug = $row['slug'];
                  $desp = $row['desp'];
                  $id = $row['id'];


                  $rows2 =mysqli_query($con,"SELECT * FROM simgs where feat=1 AND pid='$id'  ORDER BY ordr" ) or die(mysqli_error($con));
                  $n=0;

                  while($row2=mysqli_fetch_array($rows2)){

                    $img = $row2['img'];

                  }


                  ?>

                  <a href="dservices-<?php echo $slug ?>">
                    <div class="item col-md-4 col-12">
                      <div class="item-inner">
                        <div class="project-item">
                          <div class="img-holder img-holder-9" style="background:url(images/services/<?php echo $img ?>);     background-size: 100% 280px;background-position:;"></div>
                          <div class="info-mask">
                            <div class="mask-inner">
                              <h4 class="title"><?php echo $name ?></h4>
                              <div class=""><a href="dservices-<?php echo $slug ?>"class="btn btn-default " >Visit</a> </div>


                            </div><!--//mask-inner-->
                          </div><!--//info-mask-->
                        </div>

                        <!--//project-item-->
                      </div><!--//item-inner-->
                    </div><!--//item-->
                  </a>
                <?php } ?>
              </div> <!--//row-->
            </div><!--//latest-projects-->

          </div><!--//container-->
   







        <?php

        $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
        $n=0;

        while($row=mysqli_fetch_array($rows)){

          $msg = $row['msg']; 
          $vidimg = $row['vidimg']; 
          $vid = $row['vid']; 
          $vidpost = $row['vidpost']; 

        }
        ?>



        <div class="count clearfix wow fadeIn paralax" data-wow-delay="100ms" style="background-image: url(images/<?php echo $vidimg ?>);">
          <div class="container">

            <?php echo $vid ?>

            <br>
            <br>
            <center> <a href="videos.php" class="btn btn-primary"  style="background:#105d05;font-size:17px" target="blank" >View More Videos</a> </center>

            <div class="clearfix"></div>
            <div class="paralax-text text-center">

             <?php echo $vidpost ?>

           </div><!-- row -->
         </div><!-- container -->
       </div><!-- count -->

       <div class="testimonial-section clearfix">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-6">
              <div class="testimonial">
                <div class="carousal_content">
                  <?php echo $msg ?>
                </div>
                <div class="carousal_bottom">
                  <div class="thumb">
                    <img src="images/ceo.jpg" alt="" draggable="false">
                  </div>
                  <div class="thumb_title">
                    <span class="author_name">Engr. Ch. Ghulam Hussain</span>
                    <span class="author_designation">Cheif Executive NDC</span>
                  </div>
                </div>
              </div><!-- testimonial -->
            </div><!-- col-xs-12 -->
            <div class="col-xs-12 col-sm-6">
             <?php echo $gmaps ?>
           </div><!-- col-xs-12 -->
         </div><!-- row -->
       </div><!-- container -->
     </div><!-- testimonial-section -->

     <br>

     <div class="brandSection clearfix">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <center><h2>Our Clients</h2></center>
            <br>
            <br>
            <div class="owl-carousel partnersLogoSlider">

             <?php $rows =mysqli_query($con,"SELECT * FROM clients where feat=1  ORDER BY ordr" ) or die(mysqli_error($con));
             $n=0;

             while($row=mysqli_fetch_array($rows)){

              $url = $row['url']; 
              $name = $row['name']; 
              $img = $row['img'];

              ?>
              <div class="slide">
                <div class="partnersLogo clearfix">
                  <a href="clients"><img src="images/clients/<?php echo $img ?>"></a>
                </div>
              </div>

            <?php } ?>

          </div>
        </div>
      </div>
    </div>
  </div><!-- Brand-section -->


  <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

