<html>
<head>
<?php include 'include/connect.php'; ?>
<?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
<?php if(!empty( $_GET['cpage_name'])) $page = $_GET['cpage_name'] ?>
<?php if(empty( $_GET['page_name'])) $link = 'shippingbox' ?>
<?php if(empty( $_GET['cpage_name'])) $page = 'shippingbox' ?>
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
   
<br><br>
  <div class="content_top">
    <div class="container" style="line-height: 25px;">
        <h1><?php echo $pagename ?></h1>
        <?php echo $pagepost ?>
      </div>
  </div> <!--content_top ends-->
  

    
    <style>
        
        input, button, select, textarea {
    background-image: none;
    border: 1px solid #e1e1e1;
    padding: 7px;
    margin-bottom: 15px;
    font-size: 17px;
    width: 100%;
    color: black;
}

span{
    font-size: 18px;
}


    </style>
    <!-- INTRO NOTE
================================================== -->
    <section class="intro-note">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
                
                
      <h1 style="text-align:center"><img src="images/logo2.png" style="width:300px;"></h1>

                <h2 style="text-align:center;">Shipping Boxes Online</h2>
                <br><br>
                <form action="" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <span>Select Size:</span>
                                
                                <select  onchange="wrt(0)" name="qty1" >
                                    <option value="" disabled selected>Size</option>

                              <option value="45">45 x 45 x 45</option>
                              <option value="70">45 x 45 x 70</option>
                              <option value="76">57 x 57 x 76</option>
                            </select>
                            </div> 
                            <div class="col-md-6">
                                <span>Select Quantity:</span>
                                
                                <select onload="wrt(0)" onchange="wrt(0)" name="price1" placeholder="select" >
                                    <option value="" disabled selected>Quantity</option>
                              <option value="1">1</option>
                              <option value="10">10</option>
                              <option value="50">50</option>
                              <option value="500">500</option>
                        
                            </select>
                            </div> 
                        </div>
                        
                        <center>
                    
                        <span>Unit Price:</span>    
                        
                        <input type="number" value="0" name="item_total1"  id="c" style="text-align:center;" readonly>
                        
                        </center>
                        <br>
                        <span>(Your) Contact No. / Email:</span>
                        <center>
                        <input type="text" name="contact" /> &nbsp;  &nbsp;  &nbsp;  &nbsp; <input type="submit" name="submit" value="Order Now;" class="ordbtn">
                        </center>
                        <style>
                            .ordbtn
                                {
   padding: 26px 100px;
    color: white;
    width: auto !important;
    background-size: contain;
    background-repeat: no-repeat;
     background: #272727;

                            }
                        </style>
                    </div>
                    <div class="col-md-6">
                        <center>
                            
                        <img src="" id="boximg" style="max-height:200px">
                        </center>
                    </div>
                    
                    
                </div>
                </form>
                  <?php
                        if(isset($_POST['submit'])) {
                        // EDIT THE 2 LINES BELOW AS REQUIRED
                        $email_to = "sales@alrumanah.com";
                        $email_subject = "Website Order";

                        function died($error) {
                        // your error code can go here
                        echo "We are very sorry, but there were error(s) found with the form you submitted. ";
                        echo "These errors appear below.<br /><br />";
                        echo $error."<br /><br />";
                        echo "Please go back and fix these errors.<br /><br />";
                        die();
                        }
                        
                        $size = $_POST['qty1']; // required
                        $qty = $_POST['price1']; // required
                        $contact = $_POST['contact']; // required
                        $unit = $_POST['item_total1']; // required
                        
                        $email_message = "Form details below.\n\n";


                        function clean_string($string) {
                        $bad = array("content-type","bcc:","to:","cc:","href");
                        return str_replace($bad,"",$string);
                        }



                        $email_message .= "Size: ".clean_string($size)."\n";
                        $email_message .= "Quantity: ".clean_string($qty)."\n";
                        $email_message .= "Unit Price: ".clean_string($unit)."\n";
                        $email_message .= "Contact: ".clean_string($contact)."\n";
                        


                        // create email headers
                        $headers = 'From: '.$email_from."\r\n".
                        'Reply-To: '.$email_from."\r\n" .
                        'X-Mailer: PHP/' . phpversion();
                        @mail($email_to, $email_subject, $email_message, $headers);
                        ?>

                        <!-- include your own success html here -->
                        <center>
                            <h3>
                        Thank you for contacting us. We will be in touch with you very soon.
                        </h3>
                        </center>

                        <?php

                        }
                        ?>
      

    
<br><br>





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">

function wrt(x) {
  var a=parseInt(document.getElementsByName('qty1')[x].value);
  var b=parseInt(document.getElementsByName('price1')[x].value);
  var imgsrc;
  var c;
  if (a==45 && b==1) { c=45 }
  if (a==45 && b==10) { c=15 }
  if (a==45 && b==50) { c=12 }
  if (a==45 && b==500) { c=8 }
  if (a==70 && b==1) { c=55 }
  if (a==70 && b==10) { c=20 }
  if (a==70 && b==50) { c=15 }
  if (a==70 && b==500) { c=10 }
  if (a==76 && b==1) { c=55 }
  if (a==76 && b==10) { c=25 }
  if (a==76 && b==50) { c=20 }
  if (a==76 && b==500) { c=15 }

  if (a==45) {$("#boximg").attr("src","img/demo/box1.png");}
  if (a==70) {$("#boximg").attr("src","img/demo/box2.png");}
  if (a==76) {$("#boximg").attr("src","img/demo/box3.png");}



  document.getElementsByName('item_total1')[x].value=c;
  var n=0;
  
  var everyChild = document.querySelectorAll("#c");
  for (var i = 0; i<everyChild.length; i++) {
     m=everyChild[i].value;
     m=+m;
     n=n+m;
  }
  document.getElementById('d').value = n;



}



</script>




                
                
              
              
                </div>
            </div>
        </div>
     </div>
         
                      
<style>
    
    .para>p{
        color:black;
        font-size:16px;
        
    }
</style>












</div>
     <br><br>


  <?php } ?>

   
   


  </div>


<?php include('include/footer.php') ?>

</body>
</html> 