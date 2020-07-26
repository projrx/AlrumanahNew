<html>
<head>
  <?php include 'include/connect.php'; ?>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['cpage_name'])) $page = $_GET['cpage_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'Null' ?>
  <?php if(empty( $_GET['cpage_name'])) $page = Null ?>
  <?php

  $rows =mysqli_query($con,"SELECT * FROM pages where `slug` = '$link' " ) or die(mysqli_error($con));

  while($row=mysqli_fetch_array($rows)){

    $pageid = $row['id'];  
    $pagename = $row['name'];
    $pagemetak = $row['metak'];
    $pagemetad = $row['metad'];
    $pagepost = $row['post'];
    $pagecover = $row['cover'];

  }
  ?>
  <?php include('include/head.php') ?>
  
<title>    <?php echo $pagename ?> - <?php echo $sitename ?>  </title>

</head>
<body class="page-header-fixed bg-1 layout-boxed">
  <div class="modal-shiftfix">



    <?php include('include/header.php') ?>

    <div class="banner">
      <img style="height: 200px;" src="images/covers/<?php echo $pagecover ?>" width="100%"> 
    </div> <!--banner ends-->


    <div class="content_top">
      <div class="container">
        <h1><?php echo $pagename ?></h1>
        <?php echo $pagepost ?>
      </div>
    </div> <!--content_top ends-->

    <br>
    <br>
    <br>


    <div class="container pbg">


     <br>



     <center><h1>News &amp; Events</h1></center>
     <br>
     <br>

     <?php

     $rows =mysqli_query($con,"SELECT * FROM marquee  ORDER BY ordr" ) or die(mysqli_error($con));
     $n=0;

     while($row=mysqli_fetch_array($rows)){

      $name = $row['text']; 
      $url = $row['url'];
      $year = $row['year'];
      $month = $row['month'];

      $ordr = $row['ordr']; 
      $id = $row['id']; 


      ?>

      <div class="row">

       <div class="col-md-2"></div>
       <div class="col-md-1">



            <?php echo $month ; ?>
         

            <?php echo $year ; ?>
          </div>
      <div class="col-md-9 newt">

       <h2>
        <?php echo $url ; ?></h2>

      </div>
      <div class="col-md-3"></div>
      <div class="col-md-7">
       <p>

        <?php echo $name ; ?>   
      </p>
    </div>

  </div>
  <br>
  <hr>
  <br>

<?php } ?>





















<br>

</div>




<div class="space"></div>



</div>


<?php include('include/footer.php') ?>

</body>
</html> 