
  <!-- TOP AREA
================================================== -->
  <section class="toparea">
    <div class="container">
        <div class="row">
                <div class="col-md-12 top-text pull-left animated fadeInLeft">
                    <i class="fa fa-whatsapp" style="    color: #3bb73b;   font-size: 17px;"></i></i> Whatsapp: <strong>050 474 0448</strong>
                    </i> ,  <strong> 050 763 5908</strong>
                 
                    <span class="separator"></span>
                    <i class="icon-phone"></i> Phone: <strong> <?php echo $sitephone ?></strong> 

                    <span class="separator"></span>
                    <i class="icon-envelope"></i> Email : <a href="mailto:<?php echo $sitemail ?>"><?php echo $sitemail ?></a> ,  <a href="mailto:info@alrumanah.com">info@alrumanah.com</a>
                </div>
        
      </div>
    </div>
  </section>
  <!-- /.toparea end-->
  <!-- NAV
================================================== -->
  <nav class="navbar navbar-fixed-top wowmenu" role="navigation" style="background:#2f2f2f">
  <div class="container"style="background:#2f2f2f">
    <div class="navbar-header">
      <a class="navbar-brand logo-nav" href="home"><img height="80px" src="images/logo2.png" alt="logo"></a>
    </div>
    <ul id="nav" class="nav navbar-nav pull-right">
      <li <?php if($link=="home") echo 'class="active"' ; ?>><a href="home">Home</a></li>
      <li <?php if($link=="profile") echo 'class="active"' ; ?>><a href="profile">Profile</a></li>
      <li class=" <?php if($link=="products") echo 'active' ; ?> dropdown">
      <a href="products" class="dropdown-toggle" >Our Products<i class="icon-angle-down"></i></a>
      <ul class="dropdown-menu">
          
          <?php $allrows =mysqli_query($con,"SELECT id,name FROM productcat ORDER BY name" ) or die(mysqli_error($con));
            while($allrow=mysqli_fetch_array($allrows)){
             $pid = $allrow['id'];
             $pname = $allrow['name']; ?>
        <li><a href="dproducts-<?php echo $pid ?>"><?php echo $pname ?></a></li>
        
        
        <?php } ?>
      </ul>
      </li>
      <li <?php if($link=="corrugated") echo 'class="active"' ; ?>><a href="corrugated">Corrugated Boxes</a></li>

      <li <?php if($link=="shippingbox") echo 'class="active"' ; ?>><a href="shippingbox">Order Boxes Online</a></li>
      <li <?php if($link=="custombox") echo 'class="active"' ; ?>><a href="custombox">Custom Boxes</a></li>

      <!--
      <li><a href="quote.php">Request a Quote</a></li> -->
          
            <li  <?php if($link=="blogs") echo 'class="active"' ; ?>><a href="blogs">Blogs</a></li>
            <li  <?php if($link=="contacts") echo 'class="active"' ; ?>><a href="contact">Contact Us</a></li>



    </ul>   
  </div>  
  </nav>
  <!-- /nav end-->


  
  <div class="icon-bar">
    <a href="https://www.facebook.com/Al-Rumanah-268427677380420/" target="blank" class="facebook"><i class="fa fa-facebook"></i></a> 
    <a href="https://twitter.com/RumanahAl" class="twitter" target="blank" ><i class="fa fa-twitter"></i></a> 
    <a href="https://al-rumanah.business.site/" class="google" target="blank" ><i class="fa fa-google"></i></a> 
    <a href="https://www.linkedin.com/in/al-rumanah-964275184/" class="linkedin" target="blank" ><i class="fa fa-linkedin"></i></a>
  </div>

  <!--
<header class="header-wrapper">
    <div class="topbar clearfix" style="background: #55c348">
      <div class="container">
        
        <ul class="topbar-left">
          <li><?php echo $sitename ?></li>
        </ul>
        <ul class="topbar-right">
        <li><i class="fa fa-envelope"></i> <?php echo $sitemail ?></li>
        <li><i class="fa fa-phone"></i> <?php echo $sitephone ?></li>

  
        </ul>
      </div>
    </div>

    <div class="header clearfix" >
      <nav class="navbar navbar-main navbar-default"style="background-color: #fff">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="header_inner">
                <a class="navbar-brand logo clearfix cuslogo" href="index"><img src="images/<?php echo $sitelogo; ?>" alt="" class="img-responsive cuslogo" style="width: 90px" /></a>
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                </div>

                <div class="collapse navbar-collapse" id="main-nav"><span class="navbar-header"></span>
                  <ul class="nav navbar-nav navbar-right">

              



                    <?php

                    $rows =mysqli_query($con,"SELECT name,slug,res FROM pages  ORDER BY ordr" ) or die(mysqli_error($con));
                              
                      while($row=mysqli_fetch_array($rows)){
                        
                        $slug = $row['slug']; 
                        $name = $row['name']; 
                        $res = $row['res']; 

                        ?>

                    <li <?php if($link==$slug) echo'class="apply_now"' ;?> <?php if($slug=='blogs') echo'class="dropdown"' ; else if($slug=='videos') echo'style="display:none;"'; ?>>

                      <?php if($slug=='blogs'){ ?>
                        

                      <ul class="dropdown-menu">

                        <?php 

                        $rowsx =mysqli_query($con,"SELECT name,slug FROM blogs  ORDER BY ordr" ) or die(mysqli_error($con));
                                  
                          while($rowx=mysqli_fetch_array($rowsx)){
                            
                            $cslug = $rowx['slug']; 
                            $cname = $rowx['name']; 

                            ?>
                          <li><a href="blogs-<?php echo $cslug ?>"><?php echo $cname ?></a></li>

                      <?php } ?>
                      </ul>

                    <?php } ?>



                      <a href="<?php if($res==0) echo'pages-' ;?><?php if($slug=='pages') echo'#'; else  echo $slug ?>"></span><?php echo $name ?></a>

                    </li>

                    
                    <?php } ?>

              
                  </ul>
                </div>

              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </header>

  -->
