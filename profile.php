<html>
<head>
<?php include 'include/connect.php'; ?>
<?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
<?php if(!empty( $_GET['cpage_name'])) $page = $_GET['cpage_name'] ?>
<?php if(empty( $_GET['page_name'])) $link = 'profile' ?>
<?php if(empty( $_GET['cpage_name'])) $page = 'profile' ?>
<?php

$rows =mysqli_query($con,"SELECT * FROM pages where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  $pageordr = $row['ordr'];
?>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="<?php echo $pagemetak ?>">
<meta name="description" content="<?php echo $pagemetad ?>">

<title>  <?php echo $pagename ?> </title>
<?php } ?>
  <?php include('include/head.php') ?>

</head>
<body  class="page-header-fixed bg-1 layout-boxed">
  <div class="modal-shiftfix">



    <?php include('include/header.php') ?>

<?php if (!empty($page)) {


  ?>



  <?php

  $rows =mysqli_query($con,"SELECT * FROM pages where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
  

  while($row=mysqli_fetch_array($rows)){

    $pageid = $row['id'];  
    $pagename = $row['name'];
    $pagemetak = $row['metak'];
    $pagemetad = $row['metad'];
    $pagepost = $row['post'];
    $pagecover = $row['cover'];
    $pageordr = $row['ordr'];

  }

  ?>


  <div class="wrapsemibox" style="background:url('images/brown.jpg')">
   

  <div class="content_top">
    <div class="container">
        <h1><?php echo $pagename ?></h1>
        <?php echo $pagepost ?>
      </div>
  </div> <!--content_top ends-->
  

</div>
     <br><br>


  <?php } ?>

   
   


  </div>


<?php include('include/footer.php') ?>

</body>
</html> 