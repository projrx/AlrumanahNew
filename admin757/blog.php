<html>
<head>

  <?php include('include/head.php') ?>

  <title>
    Edit Page
  </title>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'blogs'; ?>
  <?php if(!empty( $_GET['pages_name'])){ $page = $_GET['pages_name'];$link=$page; } ?>

  <?php


  for ($i=0; $i < $ilimit ; $i++) { 

    if(isset($_POST['savecat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['savecat'.$i];
      $name=$_POST['name'.$i];
      $slug1=$_POST['slug'.$i];
      $ordr=$_POST['ordr'.$i];



    if (!empty($_FILES['img'.$i]['name'])) {
      
        // Get image name
      $image = $_FILES['img'.$i]['name'];
      $image = md5(uniqid())  . "1.png";
      
        // image file directory
      $target = "../images/blogs/".basename($image);

      $data=mysqli_query($con,"UPDATE blogcat SET `img`='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['img'.$i]['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }



      if(isset($_POST['feat'.$i]) ){
        $feat=1;
      }else{
        $feat=0;
      } 



      $sql = "UPDATE blogcat SET `name` = '$name' ,`ordr` = '$ordr',`feat` = '$feat' WHERE `id` =$id";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));
      if(empty($msg))  $msg="Updated";


    }

  }



  for ($i=0; $i < $ilimit ; $i++) { 

    if(isset($_POST['delcat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['delcat'.$i];


     $rows =mysqli_query($con,"SELECT id FROM blogs where pid='$id'  ORDER BY ordr" ) or die(mysqli_error($con));
     while($row=mysqli_fetch_array($rows)){
       $pid = $row['id']; 
     $sql = "DELETE FROM blogs WHERE id=$pid  ";
     mysqli_query($con, $sql) ;
    }

     $sql = "DELETE FROM blogcat WHERE id=$id  ";
     mysqli_query($con, $sql) ;
     ($msg=mysqli_error($con));

     if(empty($msg))  $msg="Deleted";




   }

 }

 
 ?>



 <?php
 if(isset($_POST['addcat'])){

  $msg="Unsuccessful" ;
  
  $name=$_POST['newname'];
  $slug1=$_POST['newname'];
  $ordr=$_POST['newordr'];


    if (!empty($_FILES['img']['name'])) {
      
        // Get image name
      $image = $_FILES['img']['name'];
      $image = md5(uniqid())  . "1.png";
      
        // image file directory
      $target = "../images/blogs/".basename($image);
      if (move_uploaded_file($_FILES['img']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }




      if(isset($_POST['feat']) ){
        $feat=1;
      }else{
        $feat=0;
      } 



  $slug0=strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1));
  $slug = $slug0."_".rand(1,100);

      

 $data=mysqli_query($con,"INSERT INTO blogcat (name,slug,img,ordr,feat)VALUES ('$name','$slug','$image','$ordr','$feat')")or die( mysqli_error($con) );

 $msg="Category Added" ;


 
}
?>

  <?php



  for ($i=0; $i < $ilimit ; $i++) { 

  if(isset($_POST['saveres'.$i])){
    $msg="Unsuccessful" ;

    $id=$_POST['saveres'.$i];
    $name=$_POST['name'.$i];
    $metak=$_POST['metak'.$i];
    $slug1=$_POST['slug'.$i];
    $metad=$_POST['metad'.$i];
    $ordr=$_POST['ordr'.$i];


       $slug=strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1));


    $sql = "UPDATE blogs SET `name` = '$name',`slug` = '$slug',`metak` = '$metak',`metad` = '$metad',`ordr` = '$ordr' WHERE `id` =$id";

    mysqli_query($con, $sql) ;
    ($msg=mysqli_error($con));
    if(empty($msg))  $msg="Saved";

      header("location: blogs-$slug");



  }

  }



  for ($i=0; $i < $ilimit ; $i++) { 

    if(isset($_POST['delcat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['delcat'.$i];


      $sql = "DELETE FROM blogs WHERE id=$id  ";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));

      if(empty($msg))  $msg="Page Deleted";

      header('location:blogs');

    }

  }




  
  ?>








  <?php
  if(isset($_POST['addcus'])){

      $msg="Unsuccessful" ;
      
       $name=$_POST['newname'];
       $slug2=$_POST['newname'];
       $metak=$_POST['newmetak'];
       $metad=$_POST['newmetad'];
       $ordr=$_POST['newordr'];
       $post=$_POST['newurl'];
       $pid=$_POST['pid'];
             $rowsxn =mysqli_query($con,"SELECT slug FROM blogcat WHERE id='$pid'  ORDER BY ordr " ) or die(mysqli_error($con));
   while($rowxn=mysqli_fetch_array($rowsxn)){
   $pslug = $rowxn['slug']; }


       $slug1=strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $slug2));
       $slug=$slug1;




  $image="Null";
  if (!empty($_FILES['image1']['name'])) {

      // Get image name
    $image = $_FILES['image1']['name'];
    $image = md5(uniqid())  . "1.png";

      // image file directory
    $target = "../images/covers/".basename($image);

    if (move_uploaded_file($_FILES['image1']['tmp_name'], $target)) {
      $msg = "Image uploaded successfully";
    }else{
      $msg = "Failed to upload image";
    }


  }


  $data=mysqli_query($con,"INSERT INTO blogs (pid,pslug,name,slug,metak,metad,ordr,post,cover)VALUES ('$pid','$pslug','$name','$slug','$metak','$metad','$ordr','$post','$image')")or die( mysqli_error($con) );

    ($msg=mysqli_error($con));

    if(empty($msg))  $msg="Page Added";
      
      header("location: blogs-$slug");


  }

  ?>


  




  <?php
    if(isset($_POST['saveinfo'])){
      $msg="Unsuccessful" ;
$id=$_POST['saveinfo'];
    $name=$_POST['name'];
    $slug1=$_POST['slug'];
    $metak=$_POST['metak'];
    $metad=$_POST['metad'];
    $ordr=$_POST['ordr'];
    $post=$_POST['editor1'];

    $pid=$_POST['pid'];
      $rowsxn =mysqli_query($con,"SELECT slug FROM blogcat WHERE id='$pid'  ORDER BY ordr " ) or die(mysqli_error($con));
   while($rowxn=mysqli_fetch_array($rowsxn)){
   $pslug = $rowxn['slug']; }



    $slug2=preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1);
    $slug=strtolower($slug2);

    if (!empty($_FILES['image1']['name'])) {
        
      // Get image name
      $image = $_FILES['image1']['name'];
      $image = md5(uniqid())  . "1.png";
      
      // image file directory
      $target = "../images/covers/".basename($image);

      $data=mysqli_query($con,"UPDATE blogs SET `cover`='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['image1']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }


    $sql = "UPDATE blogs SET `name` = '$name',`slug` = '$slug',`pid` = '$pid',`pslug` = '$pslug',`metak` = '$metak',`metad` = '$metad',`ordr` = '$ordr',`post` = '$post' WHERE `id` =$id";


    mysqli_query($con, $sql) ;
    ($msg=mysqli_error($con));
    if(empty($msg))  $msg="Saved";


      header("location: blogs-$slug");


    }

    ?>


    <?php



 if (!empty($page)) {


    $rows =mysqli_query($con,"SELECT * FROM blogs where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
  

    while($row=mysqli_fetch_array($rows)){

      $pageid = $row['id'];  
      $pid = $row['pid'];  
      $pagename = $row['name'];
      $pagemetak = $row['metak'];
      $pagemetad = $row['metad'];
      $pagepost = $row['post'];
      $pagecover = $row['cover'];
      $pageordr = $row['ordr'];

    }

       $rowsxn =mysqli_query($con,"SELECT name FROM blogcat WHERE id='$pid'  ORDER BY ordr " ) or die(mysqli_error($con));
                                   while($rowxn=mysqli_fetch_array($rowsxn)){
                                   $pname = $rowxn['name']; }

  }

    ?>






<style type="text/css">
  
  #cke_1_contents{
    height: 500px !important;
  }

</style>

</head>
<body onload="showtoast()"  class="page-header-fixed bg-1 sidebar-nav">
  <div class="modal-shiftfix">



    <?php include('include/header.php') ?>

<?php if (!empty($page)) {


  ?>





    <div class="container-fluid main-content">

      <div class="row">
        <!-- Basic Table -->

        <div class="col-lg-1">
        </div>
        <div class="col-lg-10">
         

                 <div class="widget-container fluid-height clearfix">
            <div class="heading" style="text-transform: capitalize;">
              <i class="fa fa-image"></i> <?php echo $page ?>
            </div>
            <div class="widget-content padded clearfix">


     
    <div class="row">

     

      <div class="col-md-12">
        <center>
        <img style="width: 600px;" src="../images/covers/<?php echo $pagecover ?>" >
      </center>
        <br><br>

      </div>
    </div>
    <form method="post" action="" enctype="multipart/form-data">
    
    <div class="row">

      <div class="col-md-12">

      <table class="table table-bordered">
            <thead>
              <th colspan="2">
               Name 
             </th>

             <th>
               Slug 
             </th>

             <th>
               Category 
             </th>

      

          </thead>
          <tbody>
          <tr>
            <td colspan="2">
              <input type="text" class="form-control" name="name" value="<?php echo $pagename ?>">
            </td>

            <td>
              <input type="text" class="form-control" name="slug" value="<?php echo $page ?>">
            </td>

            <td>
              <select type="text" class="form-control" name="pid" value="<?php echo $pname ?>">
              <?php $qrowsx =mysqli_query($con,"SELECT id,name FROM blogcat  ORDER BY ordr " ) or die(mysqli_error($con));
                                   while($qrowx=mysqli_fetch_array($qrowsx)){
                                   $newpname = $qrowx['name'];
                                   $newpid = $qrowx['id']; ?>
                                   <option <?php if($newpid==$pid) echo "selected"; ?> value="<?php echo $newpid ?>"><?php echo $newpname ?></option>
                                 <?php } ?>
                                            </select>
                                                        </td>
          </tr>
          <tr>

             <th>
              Meta Keywords
            </th>
            <th>
              Meta Description
            </th>
            <th>
              Change Cover
            </th>
            <th style="max-width: 60px;">
              Order
            </th>

</tr>
            <td>
              <input type="text" class="form-control" name="metak" value="<?php echo $pagemetak ?>">
            </td>
            <td>
              <input type="text" class="form-control" name="metad" value="<?php echo $pagemetad ?>">
            </td>
            <td>
              <input type="file" class="form-control" name="image1" >
            </td>

            <td  style="max-width: 60px;">
              <input type="text" class="form-control" name="ordr" value="<?php echo $pageordr ?>">
            </td>


          </tr>
        </tbody>


</table>

      </div>
    </div>





    
    <div class="row">


      <div class="col-md-12">

      
   <textarea name="editor1" style="min-height: 900px"><?php echo $pagepost ?></textarea>
                 
      </div>
    </div>
    <br><br>

    <center>
                <button type="submit" name="saveinfo" class="btn btn-primary" value="<?php echo $pageid ?>"> <i class="fa fa-save"></i> Save</button>



        </form>
<br><br>
<br><br>

</center>
</form>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>

  <?php  } ?>

    <div class="container-fluid main-content">


    
<div class="row">
  <div class="col-md-1">
  </div>
  <div class="col-md-10">
    <div class="container-fluid main-content">
      <div class="row">
        <!-- Basic Table -->
        <div class="col-lg-12">
          <div class="widget-container fluid-height clearfix">
            <div class="heading">
              <i class="fa fa-tags"></i>Blogs Category
            </div>
            <div class="widget-content padded clearfix">
              <table class="table table-bordered" style="border: none">
                <thead>
                  <th colspan="2">
                   Name 
                 </th>

                 <th style="display: none">
                   Slug 
                 </th>
                 
                 <th>
                  Image
                </th>
                <th style="max-width: 100px; width: 100px;">
                  New Image
                </th>
                
                <th style="max-width: 60px;">
                  Order
                </th>
                <th style="max-width: 60px;">
                  Feat
                </th>

                <th class="hidden-xs">
                  Manage
                </th>


              </thead>
              <tbody>

                <?php

                $rows =mysqli_query($con,"SELECT * FROM blogcat  ORDER BY ordr  LIMIT $pclimit" ) or die(mysqli_error($con));
                $n=1;

                while($row=mysqli_fetch_array($rows)){

                  $slug = $row['slug']; 
                  $pslug = $row['slug']; 
                  $name = $row['name']; 
                  $img = $row['img']; 
                  $desp = $row['desp']; 

                  $ordr = $row['ordr']; 
                  $feat = $row['feat']; 
                  $id = $row['id']; 
                  $parentid = $row['id']; 

                  ?>
                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td colspan="2">
                        <input type="text" class="form-control" name="name<?php echo $n ?>" value="<?php echo $name ?>">
                      </td>

                      <td style="display: none">
                        <input readonly="" type="text" class="form-control" name="slug<?php echo $n ?>" value="<?php echo $slug ?>">
                      </td>
                      
                      <td>
                        <center>
                          <img src="../images/blogs/<?php echo $img ?>"  style="width: 100px">
                          
                        </center>
                      </td>
                      <td style="max-width: 130px">
                        <center>
                          <input type="file" class="form-control" name="img<?php echo $n ?>">
                        </center>
                      </td>
                      

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="ordr<?php echo $n ?>" value="<?php echo $ordr ?>">
                      </td>

                       <td  style="max-width: 60px;">
                          <center>
                            <input type="checkbox" style="display: inline-block;" class="" name="feat<?php echo $n ?>" <?php if($feat==1) echo 'checked' ?> >
                          </center>
                        </td>

                      <td class="text-center">

                        <div class="btn-group">

                          <button type="submit" name="savecat<?php echo $n ?>" class="btn btn-success-outline" value="<?php echo $id ?>"> <i class="fa fa-save"></i></button>


                          <button type="submit" name="delcat<?php echo $n ?>" class="btn btn-danger-outline" value="<?php echo $id ?>"> <i class="fa fa-trash"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                              <?php $n++; } ?>



                          <tr>
                            <td colspan="7" class="text-center">


                              <!-- Button trigger modal -->
                              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#catModal">
                                Add New Category
                              </button>

                              <!-- Modal -->
                              <div class="modal fade" id="catModal" tabindex="-1" role="dialog" aria-labelledby="catModalL" aria-hidden="true">
                                <form method="post" action="" enctype="multipart/form-data">

                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <h5 class="modal-title" id="catModalL">Add New Category</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                        </button>
                                      </div>
                                      <div class="modal-body">
                                        <table>


                                          <tr>
                                            <td>
                                              Category Name:
                                            </td>
                                            <td>
                                              <input type="text" class="form-control" name="newname" value="">
                                            </td>
                                          </tr>


                                            <td>
                                              Category Image:
                                            </td>

                                            <td colspan="2">
                                              <input type="file" class="form-control" name="img" value="">
                                              

                                            </td>
                                          </tr>
                                          <tr>

                                            <td>
                                              Category Order:
                                            </td>

                                            <td  style="max-width: 60px;">
                                              <input required="" type="text" class="form-control" name="newordr" value="<?php echo $n ?>">
                                            </td>

                                          </tr>

                                          <tr>

                                            <td>
                                              Featured:
                                            </td>

                                            <td  style="max-width: 60px;">
                                             <center>
                                              <input type="checkbox" style="display: inline-block;" class="" name="feat" checked >
                                            </center>
                                          </td>

                                        </tr>


                                      </table>
                                    </div>
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-outline" data-dismiss="modal">Close</button>
                                      <button type="submit" name="addcat" class="btn btn-primary"> <i class="fa fa-plus"></i> Add </button>
                                    </div>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </td>
                        </tr>


                    <tr>
                      
                      <td  class="text-center" colspan="7">
                          <a target="_blank" href="https://fontawesome.com/v4.7.0/icons/">View All Icons </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>












      <div class="row">
        <!-- Basic Table -->
        <div class="col-lg-12">
          <div class="widget-container fluid-height clearfix">
            <div class="heading">
              <i class="fa fa-tags"></i>Blogs
            </div>
            <div class="widget-content padded clearfix">
              <table class="table table-bordered">
                <thead>
                  <th>
                   Name 
                 </th>

                 <th style="display: none">
                   Slug 
                 </th>

                 <th>
                  Meta Keywords
                </th>
                <th>
                  Meta Descp
                </th>
                <th style="max-width: 60px;">
                  Order
                </th>

                <th class="hidden-xs">
                  Add / Edit blogs
                </th>


              </thead>
              <tbody>

                <?php

                $rows =mysqli_query($con,"SELECT * FROM blogs ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

               $slug = $row['slug']; 
               $name = $row['name']; 
               $cat = $row['pslug']; 
               $metak = $row['metak']; 
               $metad = $row['metad']; 
               $ordr = $row['ordr']; 
               $id = $row['id']; 
               $pslug = $row['pslug']; 


                  ?>
                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="name<?php echo $n ?>" value="<?php echo $name ?>">
                      </td>

                      <td style="display: none">
                        <input type="text" class="form-control" name="slug<?php echo $n ?>" value="<?php echo $slug ?>">
                        <input type="text" class="form-control" name="cat<?php echo $n ?>" value="<?php echo $cat ?>">
                      </td>
                      <td>
                        <input type="text" class="form-control" name="metak<?php echo $n ?>" value="<?php echo $metak ?>">
                      </td>
                      <td>
                        <input type="text" class="form-control" name="metad<?php echo $n ?>" value="<?php echo $metad ?>">
                      </td>

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="ordr<?php echo $n ?>" value="<?php echo $ordr ?>">
                      </td>



                      <td>

                        <div class="btn-group">

                          <button type="submit" name="saveres<?php echo $n ?>" class="btn btn-success-outline" value="<?php echo $id ?>"> <i class="fa fa-save"></i></button>

                          <a href="blogs-<?php echo $slug ?>" class="btn btn-primary-outline" value="<?php echo $id ?>"> </i> <i class="fa fa-pencil"></i></a>

                          <button type="submit" name="delcat<?php echo $n ?>" class="btn btn-danger-outline" value="<?php echo $id ?>"> <i class="fa fa-trash"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                  <?php $n++; } ?>

                  
                                  <tr>
                        <td colspan="7" class="text-center">


                          <!-- Button trigger modal -->
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#clientModal">
                            Add New Blog
                          </button>

                          <!-- Modal -->
                          <div class="modal fade" id="clientModal" tabindex="-1" role="dialog" aria-labelledby="clientModalL" aria-hidden="true">
                            <form method="post" action="" enctype="multipart/form-data">

                              <div class="modal-dialog modal-lg" role="document" style="padding-top: 0px;">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="clientModalL">Add New Page</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <table>


                                      <tr>
                                        <td colspan="1">
                                           Name:
                                        </td>
                                        <td colspan="2">
                                          <input type="text" class="form-control" name="newname" value="">
                                        </td>
                                        <td colspan="1">
                                           Category:
                                        </td>
                                        <td colspan="2">
                                  <select type="text" class="form-control" name="pid">
                                              <?php $qrowsx =mysqli_query($con,"SELECT id,name FROM blogcat  ORDER BY ordr " ) or die(mysqli_error($con));
                                   while($qrowx=mysqli_fetch_array($qrowsx)){
                                   $newpname = $qrowx['name'];
                                   $newpid = $qrowx['id']; ?>
                                   <option value="<?php echo $newpid ?>"><?php echo $newpname ?></option>
                                 <?php } ?>
                                            </select>
                                         
                                        </td>
                                      </tr>

                                      <tr>
                                        <td>
                                          Keywords:
                                        </td>
                                        <td>
                                          <input type="text" class="form-control" name="newmetak" value="">
                                        </td>
                                     

                                        <td>
                                          Description:
                                        </td>

                                        <td>
                                          <input type="text" class="form-control" name="newmetad" value="">

                                        </td>

                                        <td>
                                          Order:
                                        </td>

                                        <td >
                                          <input required="" type="text" class="form-control" name="newordr" value="">
                                        </td>

                                      </tr>
                                      <tr>
                                        <td>Cover</td>
                                        <td colspan="5">
                                <input type="file" class="form-control" name="image1" >
                                        </td>
                                        </tr> 


                                      <tr>
                                        <td colspan="6">
                            <textarea class="ckeditor"  rows="5" style="width: 100%"  name="newurl"></textarea>


                                      </td>

                                    </tr>


                                  </table>
                                </div>
                                <div class="modal-footer" style="margin-top: -25px">
                                  <button type="button" class="btn btn-outline" data-dismiss="modal">Close</button>
                                  <button type="submit" name="addcus" class="btn btn-primary"> <i class="fa fa-plus"></i> Add </button>
                                </div>
                              </div>
                            </div>
                          </form>
                        </div>
                      </td>
                    </tr>




                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

<div class="space"></div>



  </div>
</div>

<?php include('include/footer.php') ?>

</body>
</html>