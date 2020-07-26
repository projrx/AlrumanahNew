<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['service_name'])) $page = $_GET['service_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['service_name'])) $page = Null ?>

  <?php include 'include/head.php'; ?>

  <title>Services Categories </title>


</head>

<body class="body-wrapper">
    
    
    

<style>
	

		.posts-list { margin:0 0 30px; }
		.posts-list .post__holder .post-header, .posts-list .post__holder .post_content { display:none; }
		.posts-list.masonry {
			-moz-column-gap:0;
			-webkit-column-gap:0;
			column-gap:0;
			-moz-column-count:4;
			-webkit-column-count:4;
			column-count:4;
			font-size:0;
		}
		@media only screen and (max-width: 979px) {
			.posts-list.masonry {
				-moz-column-count:3;
				-webkit-column-count:3;
				column-count:3;
			}
		}
		@media only screen and (max-width: 767px) {
			.posts-list.masonry {
				-moz-column-count:1;
				-webkit-column-count:1;
				column-count:1;
			}
		}
		.posts-list.masonry > div {
			display:inline-block;
			vertical-align:top;
			width:100%;
			-webkit-column-width:1000px;
			column-width:1000px;
			-webkit-transform:translateZ(0);
		}
		.posts-list.masonry > div:before, .posts-list.masonry > div:after { display:none; }
		@media only screen and (max-width: 767px) {
			.posts-list.masonry > div { width:50%; }
		}
		@media only screen and (max-width: 480px) {
			.posts-list.masonry > div {
				width:100%;
				display:block;
			}
		}
		.posts-list.masonry > div.list-item-0 .thumbnail, .posts-list.masonry > div.list-item-9 .thumbnail { height:590px; }
		@media only screen and (min-width: 768px) and (max-width: 979px) {
			.posts-list.masonry > div.list-item-0 .thumbnail, .posts-list.masonry > div.list-item-9 .thumbnail { height:400px; }
		}
		@media only screen and (max-width: 767px) {
			.posts-list.masonry > div.list-item-0 .thumbnail, .posts-list.masonry > div.list-item-9 .thumbnail { height:300px; }
		}
		@media only screen and (max-width: 480px) {
			.posts-list.masonry > div.list-item-0 .thumbnail, .posts-list.masonry > div.list-item-9 .thumbnail { height:auto; }
		}
		.posts-list.masonry article.post__holder {
			margin:0;
			min-height:inherit;
		}
		.posts-list.masonry .post__holder { background:#000; }
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder { background:none; }
		}
		.posts-list.masonry .post__holder .thumbnail {
			margin:0;
			position:relative;
			height:295px;
		}
		@media only screen and (min-width: 768px) and (max-width: 979px) {
			.posts-list.masonry .post__holder .thumbnail { height:200px; }
		}
		@media only screen and (max-width: 767px) {
			.posts-list.masonry .post__holder .thumbnail { height:300px; }
		}
		@media only screen and (max-width: 480px) {
			.posts-list.masonry .post__holder .thumbnail { height:auto; }
		}
		.posts-list.masonry .post__holder .thumbnail > a {
			display:block;
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			float:none;
		}
		.posts-list.masonry .post__holder .thumbnail .bg-image {
			width:100%;
			height:100%;
			position:absolute;
			top:0;
			left:0;
			background-size:cover;
			background-position:50%;
			opacity:0.5;
			filter:alpha(opacity=50);
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder .thumbnail .bg-image {
				opacity:1;
				filter:alpha(opacity=100);
			}
		}
		.posts-list.masonry .post__holder .thumb_desc {
			padding:20px 10px;
			text-align:center;
			transition:all 0.3s ease 0s;
			-webkit-box-sizing:border-box;
			-moz-box-sizing:border-box;
			box-sizing:border-box;
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder .thumb_desc {
				position:absolute;
				top:0;
				left:0;
				width:100%;
				height:100%;
				padding:0 10px;
				z-index:1000;
				-webkit-transform:translateZ(0);
			}
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder .thumb_desc:after {
				content:'';
				height:100%;
				display:inline-block;
				vertical-align:middle;
			}
			.posts-list.masonry .post__holder .thumb_desc .in {
				display:inline-block;
				vertical-align:middle;
			}
		}
		.posts-list.masonry .post__holder .thumb_desc .post-title {
			font:bold 24px/1.2em 'Lato', sans-serif;
			text-transform:uppercase;
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder .thumb_desc .post-title {
				-webkit-transform:translateY(100%);
				-moz-transform:translateY(100%);
				-ms-transform:translateY(100%);
				-o-transform:translateY(100%);
				transform:translateY(100%);
				opacity:0;
				filter:alpha(opacity=0);
				-webkit-transition:all 400ms;
				-moz-transition:all 400ms;
				-o-transition:all 400ms;
				transition:all 400ms;
			}
		}
		@media only screen and (max-width: 979px) {
			.posts-list.masonry .post__holder .thumb_desc .post-title { font-size:18px; }
		}
		.posts-list.masonry .post__holder .thumb_desc .post-title a { color:#fff; }
		.posts-list.masonry .post__holder .thumb_desc .post-title a:hover { color:#e5e5e5; }
		.posts-list.masonry .post__holder .thumb_desc .post-title a:hover, .posts-list.masonry .post__holder .thumb_desc .post-title a:active, .posts-list.masonry .post__holder .thumb_desc .post-title a:focus { text-decoration:none; }
		.posts-list.masonry .post__holder .thumb_desc .post-title a:hover { color:#f44336; }
		.posts-list.masonry .post__holder .thumb_desc .excerpt {
			font:italic 18px/1.2em Georgia, "Times New Roman", Times, serif;
			color:#fff;
			text-transform:uppercase;
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder .thumb_desc .excerpt {
				color:#fff;
				-webkit-transform:translateY(200%);
				-moz-transform:translateY(200%);
				-ms-transform:translateY(200%);
				-o-transform:translateY(200%);
				transform:translateY(200%);
				opacity:0;
				filter:alpha(opacity=0);
				-webkit-transition:all 500ms;
				-moz-transition:all 500ms;
				-o-transition:all 500ms;
				transition:all 500ms;
			}
		}
		@media only screen and (max-width: 979px) {
			.posts-list.masonry .post__holder .thumb_desc .excerpt { font-size:16px; }
		}
		@media only screen and (min-width: 1200px) {
			.posts-list.masonry .post__holder:hover .thumb_desc { background:rgba(0,0,0,0.5); }
			.posts-list.masonry .post__holder:hover .thumb_desc .post-title, .posts-list.masonry .post__holder:hover .thumb_desc .excerpt {
				-webkit-transform:translateY(0);
				-moz-transform:translateY(0);
				-ms-transform:translateY(0);
				-o-transform:translateY(0);
				transform:translateY(0);
				opacity:1;
				filter:alpha(opacity=100);
			}
		}
		.lbtn{
		        color: white;
    background: #105d05;
    padding: 8px 10px;
    border: 1px solid #fff;
		}

</style>




  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>

  <?php if(empty( $_GET['service_name'])){ ?>
  
            <div class="clearfix">&nbsp;</div>
            <div class="container">
  <?php

                $rows =mysqli_query($con,"SELECT * FROM servicecat  ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                  $slug = $row['slug']; 
                  $name = $row['name']; 
                  $img = $row['img']; 
                  $desp = $row['desp']; }
                  ?>
            
         		 <div class="latest-projects text-center">
          		
                    <h2>
                    <?php echo $name; ?></h2>
                    
                    <div class="clearfix">&nbsp;</div>
                  
                  
                    <?php echo $desp; ?>
                    
                    <br>
                  
                  
                  
                  
                  

    <?php

    $rows =mysqli_query($con,"SELECT * FROM service  ORDER BY ordr" ) or die(mysqli_error($con));
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
    
    <div class="item col-md-4 col-12">
        <div class="item-inner">
                      <br>
                      

              <div class="img"><a href="dservices-<?php echo $slug ?>"><img class="pimg" src="images/services/<?php echo $img ?>"></a></div>
              <br>
              <div class="img">
                  
                      <h4 class="heading"><?php echo $name ?></h4>
                      <br>
                      <a href="dservices-<?php echo $slug ?>" class="normal-btn butn"> View Detail</a>
                  
              </div>
                
          <!--//project-item-->
        </div><!--//item-inner-->
    </div><!--//item-->
    
    
    <?php } ?>

             

                    
        </div><!--//projects-->
        
        
        
        
        
        
    </div><!--//containers-->
    
    
      <br>
    <br>
    <br>
    
    
    
  <?php }else {?>


  <div class="container">

    
    <div class="latest-projects text-center">
    
    <h2>Services</h2>
    
    <div class="clearfix">&nbsp;</div>


    <?php

    $rows =mysqli_query($con,"SELECT * FROM service where pslug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
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
    
    <div class="item col-md-4 col-12">
        <div class="item-inner">
                      <h4 class="heading"><?php echo $name ?></h4>
                      <br>
                      

              <div class="img"><a href="dservices-<?php echo $slug ?>"><img class="pimg" src="images/services/<?php echo $img ?>"></a></div>
              <br>
              <div class="img">
                      <a href="dservices-<?php echo $slug ?>" class="normal-btn butn"> View Detail</a>
                  
              </div>
                
          <!--//project-item-->
        </div><!--//item-inner-->
    </div><!--//item-->
    
    
    <?php } ?>

  </div>
  

  </div>
    
    


    <br>
    <br>
 


  <?php } ?>
    <style>
    .partnersLogoSlider .slide .partnersLogo img {
    width: 150px  !important;
    height: 120px;
}
.brandSection {
    padding: 30px 0 5px;
    
}
    </style>





   <br>
    <br>
    <br>
    
    
    <div class="brandSection clearfix">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="owl-carousel partnersLogoSlider">
              
            	<?php $rows =mysqli_query($con,"SELECT * FROM service ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                    $name = $row['name'];
                     $slug = $row['slug'];
                     $id = $row['id'];
                     
                     
      
      $rows2 =mysqli_query($con,"SELECT * FROM simgs where feat=1 AND pid='$id'  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row2=mysqli_fetch_array($rows2)){

        $img = $row2['img'];

      }


                  ?>
              <div class="slide">
                <div class="partnersLogo clearfix">
                  <a href="dservices-<?php echo $slug ?>"><img src="images/services/<?php echo $img ?>"></a>
                  <p style="color:black;"><?php echo $name ?></p>
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

