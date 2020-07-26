<html>
<head>
<?php include 'include/connect.php'; ?>
<?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
<?php if(!empty( $_GET['pages_name'])) $page = $_GET['pages_name'] ?>
<?php if(empty( $_GET['page_name'])) $link = 'blogs' ?>
<?php if(empty( $_GET['pages_name'])) $page = Null ?>
<?php

$rows =mysqli_query($con,"SELECT * FROM blogs where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));


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

<title> <?php echo $pagename ?> - <?php echo $sitename ?></title>

<?php } ?>
<?php if(empty($page)){ ?><meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Blogs">
<meta name="description" content=" Blogs - <?php echo $sitename ?>">

<title> Blogs - <?php echo $sitename ?></title>

<?php } ?>

  <?php include('include/head.php') ?>


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
<div class="container" style="background: #fff; padding: 30px;">

<br><br>

    <div class="row">
      <div class="col-md-12">
        <center>
          
        <img  src="images/covers/<?php echo $pagecover ?>" alt="<?php echo $pagename ?>" title="<?php echo $pagename ?>"  style="width: 100%">
        
        </center>
      </div>
    </div>

<div class="container">

<br><br>

    <div class="row">

      <div class="col-md-12">
       <h1> <?php echo $pagename ?></h1>
        <?php echo $pagepost ?>
    </div>
</div>


</div>
</div>

<?php } ?>

<?php if(empty($page)){ ?><meta charset="utf-8">

<br><br><br>
<div class="container" style="background: #fff; padding: 30px;">
  <h1>Blogs - <?php echo $sitename ?>:</h1>
<br><br><br>

<?php

$rows =mysqli_query($con,"SELECT * FROM blogs  ORDER BY ordr" ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pageslug = $row['slug'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  $pageordr = $row['ordr'];
?>



  



    <div class="row">
      <a href="blogs-<?php echo $pageslug ?>">
      <div class="col-md-6">
        <center>
          
        <img  src="images/covers/<?php echo $pagecover ?>" alt="<?php echo $pagename ?>" title="<?php echo $pagename ?>"  style="width: 100%">
        
        </center>
      </div>



      <div class="col-md-6">
        <?php echo $pagename ?>
        <?php echo $pagepost ?>
    </div>
  </a>
</div>




<hr>







<?php  } }  ?>

</div>














<?php include('include/footer.php') ?>

</body>
</html> 