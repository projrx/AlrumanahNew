<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <?php include('include/connect.php') ?>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['dproduct_name'])) $page = $_GET['dproduct_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['dproduct_name'])) $page = Null ?>
  <title>Product Page </title>

  <?php include 'include/head.php'; ?>

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

  </style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
    <?php include 'include/header.php'; ?>
    <br>

    <div class="container">
      <div class="row">
        <div class="col-md-9">

          <section class="story section--slider-thingy">
            <div class="flexslider">
              <ul class="slides">
                <li class="slide-1">
                  <div class="slide-image">
                    <img src="images/products/s1.jpg" alt="placeholder image">
                  </div>
                </li>
                <li class="slide-2">
                  <div class="slide-image">
                    <img src="images/products/s2.jpg" alt="placeholder image">
                  </div>
                </li>

              </ul>
            </div>
          </section>

          <br>

          <h2>                  13-inch Apple MacBook Air
          </h2>
          <span>
            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (2) </span>
            <br>
            <br>
            <h4>Product Detail:</h4>

            <br>
            <h4>We’ve Analyzed Smallest USB Stick
            </h4>
            <p>
              Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
            </p>


            <hr>
            <h4>User's Reviews:</h4>
            <br>
            <div class="col-sm-12">


              <div class="row">

                <div class="col-sm-3">
                 <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-1.jpg" width="100" height="100" alt="Pamela Heart" class="avatar avatar-100 wp-user-avatar wp-user-avatar-100 alignnone photo" /> 

                 <strong>Pamela Heart</strong><br> <span>July 12, 2015 @ 08:48</span>

                 <br>

                 
               </div>

               <div class="col-sm-9">
                <strong>Rate:</strong><span class="value user-ratings"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i></span>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
              </div>    
            </div>
            <br><br>
            <div class="row">

              <div class="col-sm-3">
               <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-5.jpg" width="100" height="100" alt="Pamela Heart" class="avatar avatar-100 wp-user-avatar wp-user-avatar-100 alignnone photo" /> 

               <strong>John Dou</strong><br> <span>May 1, 2018 @ 02:50</span>

               <br>


             </div>

             <div class="col-sm-9">
              <strong>Rate:</strong><span class="value user-ratings"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></span>
              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            </div>    
          </div>
          <br><br>

        </div>
      </div>





<div class="col-md-3">

  <h2>Related Products:</h2>
  <br>

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
  <br>

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
<br>

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
</div>
</div>



<br><br>
<?php include 'include/footer.php'; ?>

<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/15309/flexslider.js"></script>
<script type="text/javascript">
  $(".flexslider").flexslider({
    animation: "slide", 
    slideshow: true,
    touch: true,
    keyboard: true,
    pauseOnHover: true
  });
</script>

</div>
</body>

</html>

