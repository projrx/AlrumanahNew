<html>
<head>
<?php include 'include/connect.php'; ?>
<?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
<?php if(!empty( $_GET['query_name'])) $page = $_GET['query_name'] ?>
<?php if(empty( $_GET['page_name'])) $link = 'Null' ?>
<?php if(empty( $_GET['query_name'])) $page = Null ?>




  <?php include('include/head.php') ?>

<title>
  Search - <?php echo $sitename ?>
</title>

<style type="text/css">
  
  #coverimg{
    width: 100%;
    height: 150px;

  }

</style>

</head>
<body onload="showtoast()"  class="page-header-fixed bg-1 layout-boxed">

<div class="modal-shiftfix">
<?php include('include/header.php') ?>

<?php if (!empty($page)) { ?>




<div class="container">

<br><br>

    <div class="row">


      <br>
      <h3>Search Results:</h3>
      <br>

    <?php

    $rows =mysqli_query($con,"SELECT * FROM product WHERE (name LIKE '%$page%') OR (desp LIKE '%$page%' )  ORDER BY RAND() LIMIT 6" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $proname = $row['name'];
      $proslug = $row['slug'];
      $prodesp = $row['desp'];
      $proid = $row['id'];
      $proimg = $row['img1'];
      if(empty($desp)) $desp='...';
      
          $rowsx =mysqli_query($con,"SELECT * FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($rowx=mysqli_fetch_array($rowsx)){
           $revid = $rowx['id']; 
           $revactid = $rowx['actid']; 
           $rating = $rowx['rating']; 
           $review = $rowx['review']; 
           $datec = $rowx['datec'];
         }

          $rowsx =mysqli_query($con,"SELECT * FROM users where id='$revactid'  ORDER BY datec" ) or die(mysqli_error($con));
          while($rowx=mysqli_fetch_array($rowsx)){
           $revactpic = $rowx['img']; 
           $revactname = $rowx['name']; 
         }


      ?>

          <div class="col-md-4">
            <div class="card homecard">
              <a href="dproducts-<?php echo $proslug ?>">
              <div class="">
                <center>
                <img src="images/products/<?php echo $proimg ?>" style="height: 250px">
              </center>
              </div>
              <div class="cardbody">
                <h4><?php echo $proname ?></h4>
                <span>
        <?php  $avgrt =mysqli_query($con,"SELECT AVG(rating) FROM reviews where proid='$proid'  ORDER BY datec" ) or die(mysqli_error($con)); 
          while($avg=mysqli_fetch_array($avgrt)){
           $avgrate = round($avg['AVG(rating)'],1);}
           $avgct =mysqli_query($con,"SELECT id  FROM reviews where proid='$proid'" ) or die(mysqli_error($con));   $countrate=mysqli_num_rows($avgct);
            ?>
          <div id="rating_div" class="w3-container">
        <div class="star<?php echo rand(1,1000) ?> ">
          <span><strong>Rate:</strong></span>
          <span class="fa fa-star-o" data-rating="1" ></span>
          <span class="fa fa-star-o" data-rating="2" ></span>
          <span class="fa fa-star-o" data-rating="3" ></span>
          <span class="fa fa-star-o" data-rating="4" ></span>
          <span class="fa fa-star-o" data-rating="5" ></span>
          <input type="hidden" name="rating" class="rating-value" value="<?php echo $avgrate ?>">
          <span><?php echo $avgrate ?>   (<?php echo $countrate ?>) </span>
              </a>

        </div>
  </div>
                  <p>
                    <?php echo substr($prodesp,0,100) ?>...
                  </p>

                  <img src="images/users/<?php echo $revactpic ?>" width="25" height="25" alt="Sally Doe" class="avatarimg">
                  By: <b> <?php echo $revactname ?> </b> 
                  <span style="float: right;"> <?php echo $datec
                   ?> </span>
                </div>
              </div>
              <br>
            </div>

<?php } if(empty($proname)) echo "<br><center>No Result Found... </center><br>";  ?>
   
 </div>

<div class="sover" style="background: #10101070">
          <div style="padding: 15px; "></div>
          <center>
            <form action="search.php" method="get">
            <h2 class="htext"> Search Again</h2>
            <br><br>

            <div class="row" style="max-width: 95%">
              <div class="col-md-3">
              </div>
              <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px">
                <input type="text" name="query_name" class="form-control" style="color: #fff;    background: transparent;    border: 3px solid #fff;">
              </div>
              <div class="col-md-1" style="padding-left: 0px;padding-right: 0px">
                <input type="submit" class="btn form-control" style="background: #54b948;    color: #fff;    border: 3px solid #54b948;">
              </div>

            </div>
            <br><br>

          </form>
          </center>
        </div>

      </div> 

    </div>
</div>


</div>

<?php }else{ ?>



<div class="container">

<br><br>

    <div class="row">

      <div class="col-md-12">

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
            <form action="search.php" method="get">
            <h2 class="htext"> <?php echo $name ?></h2>
            <br><br>

            <div class="row" style="max-width: 95%">
              <div class="col-md-3">
              </div>
              <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px">
                <input type="text" name="query_name" class="form-control" style="color: #fff;    background: transparent;    border: 3px solid #fff;">
              </div>
              <div class="col-md-1" style="padding-left: 0px;padding-right: 0px">
                <input type="submit" class="btn form-control" style="background: #54b948;    color: #fff;    border: 3px solid #54b948;">
              </div>

            </div>
          </form>
          </center>
        </div>

      </div> 

    </div> <!--banner ends-->



    </div>
</div>

  <?php } ?>
</div>


<?php include('include/footer.php') ?>

</body>
</html> 