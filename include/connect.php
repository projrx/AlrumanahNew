<?php	$con=mysqli_connect("localhost","root","","alrumanahNew")or die(mysql_error());$glimit=100;$plimit=10;$pimglimit=5;$pclimit=10;$pslimit=30;$ilimit=100;?> 
<?php 
$rows =mysqli_query($con,"SELECT * FROM contact " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $sitename = $row['sitename'];  
  $sitelogo = $row['logo'];  
  $sitephone = $row['phone'];  
  $sitemail = $row['email'];  
  $siteaddress = $row['address'];  
  $gmaps = $row['gmaps'];  
  $fpost = $row['fpost'];  
  $facebook = $row['facebook'];  
  $twitter = $row['twitter'];  
  $insta = $row['insta'];  
  $youtube = $row['youtube'];  
} ?>