<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['pro_name'])) $page = $_GET['pro_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['pro_name'])) $page = Null ?>

  <?php include 'include/head.php'; ?>

  <title> Product Request - <?php echo $sitename ?> </title>



<?php
if(isset($_POST['addpro'])){

  $msg="Unsuccessful" ;
  
  $name=$_POST['name'];
  $catid=$_POST['catid'];
  $subid=$_POST['subid'];
  $desp=$_POST['desp'];


  $slug1=$_POST['name'];

  $slug0=strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1));
  $slug = $slug0."-".rand(1,100);

  $rows =mysqli_query($con,"SELECT slug FROM productcat where id='$catid'  ORDER BY ordr" ) or die(mysqli_error($con));
  while($row=mysqli_fetch_array($rows)){
   $catslug = $row['slug'];        }



   $rows =mysqli_query($con,"SELECT slug FROM productsubcat where id='$subid'  ORDER BY ordr" ) or die(mysqli_error($con));
   while($row=mysqli_fetch_array($rows)){
     $subslug = $row['slug'];        }
     



     $data=mysqli_query($con,"INSERT INTO product (name,mid,mslug,pid,pslug,slug,desp,pending)VALUES ('$name','$catid','$catslug','$subid','$subslug','$slug','$desp','1')");



   $rows =mysqli_query($con,"SELECT id FROM product ORDER BY id DESC LIMIT 1" ) or die(mysqli_error($con));
   while($row=mysqli_fetch_array($rows)){
     $id = $row['id'];        }


     for($nt=1;$nt<=$pimglimit;$nt++ ){
    if (!empty($_FILES['img'.$nt]['name'])) {

        // Get image name
      $image = $_FILES['img'.$nt]['name'];
      $image = md5(uniqid())  . "1.png";

        // image file directory
      $target = "images/products/".basename($image);

      $data=mysqli_query($con,"UPDATE product SET `img$nt` ='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['img'.$nt]['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }
  } 






     ($msg=mysqli_error($con));
     if(empty($msg)) header("location:requestpros-done");

echo $msg;


     
   }
   ?>




  <style>

    .facont{
        background:#55c348;
        padding: 10px 20px;
        border-radius: 2px;
    }  

</style>

</head>

<body class="body-wrapper">

  <div class="main_wrapper">
      <?php include 'include/header.php'; ?>
      <br>




<div class="container ">

   <div class="row">
    <div class="card">
<?php if(!empty($page)){ ?>
    <Br><br>
    <center><h2>Thank You Product Request has been sent Successfully to the Admin...
    </h2>
        Product will be Live for Review after Approval.
    </center>
    <div class="space"></div>
<?php }else {?>
          <form method="post" action="" enctype="multipart/form-data">

            <table class="table table-bordered">
              <thead>
               <th>
                Name 
              </th>

              <th>
                Category 
              </th>
              <th colspan="2">
               Subcategory
             </th>

           </thead>
           <tbody>




               <tr>
                 <td>
                   <input type="text" class="form-control" name="name" value="">
                 </td>

                 <td> 

                <select class="form-control" placeholder="Select Brand" name="catid">
                   <?php
                   $rowsx =mysqli_query($con,"SELECT * FROM productcat ORDER BY ordr" ) or die(mysqli_error($con));
                   while($rowx=mysqli_fetch_array($rowsx)){
                    $name= $rowx['name']; 
                    $newcat= $rowx['id']; ?>
                    <option  value="<?php echo $newcat ?>"><?php echo $name ?></option>
                  <?php } ?>
                </select>


                </td>
                 <td colspan="2"> 

                <select class="form-control" placeholder="Select Subcategory" name="subid">
                   <?php
                   $rowsx =mysqli_query($con,"SELECT * FROM productsubcat ORDER BY ordr" ) or die(mysqli_error($con));
                   while($rowx=mysqli_fetch_array($rowsx)){
                    $name= $rowx['name']; 
                    $newcat= $rowx['id']; ?>
                    <option value="<?php echo $newcat ?>"><?php echo $name ?></option>
                  <?php } ?>
                </select>

                </td> 


               </tr>
              



    </tbody>
  </table>

  <textarea name="desp" id="editor1" class="form-control" placeholder="Product Description"></textarea>
  Note: If Product Category or Subcategory does not Appear. Mention the Require Category or Subcategory in Product Description for Website Admin to Add.
  <br>
  <br>
  <style type="text/css">
    .plusimg{
      width: 90px
    }
    .realimg{
      width: 90px
    }
    .inputimg{
      width: 95px
    }
    .mainimg{
      border:1px solid black !important;
    }
  </style>


  <div class="images">
    <h4>Product Images:</h4>
    <br>
    <table class="table table-bordered">
      <tbody>
        <tr>
          <?php for($nt=1;$nt<=$pimglimit;$nt++){ ?>
            <td class="text-center <?php if($nt==1) echo "mainimg" ?>" >
               <img src="images/plus.png" class="plusimg" >
          
               <br>
                <br>
              <center>
                <input <?php if( empty($row["img$nt"]) AND $nt==1) echo "required"; ?> type="file" name="img<?php echo $nt ?>" class="inputimg">

              </center>
              <br>
              <form action="" method="POST">
              <button name="delimg" class="btn btn-primary" value="img<?php echo $nt ?>"><i class="fa fa-trash"></i></button>
            </form>
            </td>
          <?php } ?>

        </tr>
      </tbody>
    </table>


  </div>

  <center>

   <button type="submit" name="addpro" class="btn btn-danger " value=""> <i class="fa fa-save"></i> Request</button>

 </center>

</form>
<?php } ?>


    </div>
</div>
</div>
</div>
<div class="clearfix">&nbsp;</div>
</div>
</div>



<?php include 'include/footer.php'; ?>



</div>
</body>

</html>

