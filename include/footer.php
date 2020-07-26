<br>
<br>
<br>

  <!-- BEGIN FOOTER
================================================== -->
  <section>
  <div class="footer">
    <div class="container animated fadeInUpNow notransition" style="color:white;">
      <div class="row">
        
                <div class="col-md-5">
          <h2>Al Rumanah Packaging</h2>
          <p style="color: white;">
        <?php echo $fpost ?>
          </p>
        </div>
                <div class="col-md-4">
          <h2>Contact Form</h2>
          <div class="done">
            <div class="alert alert-success">
              <button type="button" class="close" data-dismiss="alert">×</button>
              Your message has been sent. Thank you!
            </div>
          </div>
          <form method="POST" action="">
            <div class="form">
              <input class="col-md-12" type="text" name="name" placeholder="Name">
              <input class="col-md-12" type="text" name="email" placeholder="E-mail">
                            

              <input class="col-md-12" type="text" name="sub" placeholder="Subject">
                            
              <textarea class="col-md-12" name="msg" rows="2" placeholder="Message"></textarea>
              <input type="submit" name="submit1"  class="btn" value="Send">
            </div>
          </form>

<?php
if(isset($_POST["submit1"])){
// Checking For Blank Fields..
if($_POST["name"]==""||$_POST["email"]==""||$_POST["sub"]==""||$_POST["msg"]==""){
echo "Fill All Fields..";
}else{
// Check if the "Sender's Email" input field is filled out
$email=$_POST['email'];
// Sanitize E-mail Address
$email =filter_var($email, FILTER_SANITIZE_EMAIL);
// Validate E-mail Address
$email= filter_var($email, FILTER_VALIDATE_EMAIL);
if (!$email){
echo "Invalid Sender's Email";
}
else{
$subject = $_POST['sub'];
$message = $_POST['msg'];
$headers = 'From:'. $email . "rn"; // Sender's Email
// Message lines should not exceed 70 characters (PHP rule), so wrap it
$message = wordwrap($message, 70);
// Send Mail By PHP Mail Function
mail($sitemail, $subject, $message, $headers);
echo "Your mail has been sent successfuly ! Thank you for your feedback";
}
}
}
?>
        </div>
        <div class="col-md-3">
          <h2>Find Us</h2>
          <div class="footermap">
            <p>
              <strong>Address: </strong> <br> 
                            <?php echo $siteaddress ?>
            </p>
            <p>
              <strong>Phone: </strong> <?php echo $sitephone ?>
            </p>
            <p>
              <strong>Whatsapp: </strong>  050 474 0448 , 050 763 5908 
            </p>
                        
                                    
            <p>
              <strong>Email : </strong> <a href="mailto:<?php echo $sitemail ?>"><?php echo $sitemail ?></a>
            , <a href="mailto:info@alrumanah.com" style="    margin-left: 45px;" >info@alrumanah.com</a>
            </p>
                        
                        <p>
              <strong>URL: </strong> www.alrumanah.com
            </p>
            
          </div>
        </div>
        
      </div>
    </div>
  </div>
  <p id="back-top">
    <a href="#top"><span></span></a>
  </p>
  <div class="copyright">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <p class="pull-left">
             &copy; Copyright 2020 @ Al Rumanah | All Rights Reserved.
          </p>
        </div>
        <div class="col-md-8">
          <ul class="footermenu pull-right">
            <li>Powered By: <a href="https://wilcode.com/" target="_blank">WilCode</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  </section>
  <!-- /footer section end-->
</div>
<style>
    .footermap > p{
        color: white;
    }
</style>
<!-- /.wrapbox ends-->
<!-- SCRIPTS, placed at the end of the document so the pages load faster
================================================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins.js"></script>
<script src="js/common.js"></script>
<script>
  /* ---------------------------------------------------------------------- */
  /*  Carousel
  /* ---------------------------------------------------------------------- */
  $(window).load(function(){      
    $('#carousel-projects').carouFredSel({
    responsive: true,
    items       : {
        width       : 200,
        height      : 295,
        visible     : {
            min         : 1,
            max         : 4
        }
    },
    width: '200px',
    height: '295px',
    auto: true,
    circular  : true,
    infinite  : false,
    prev : {
      button    : "#car_prev",
      key     : "left",
        },
    next : {
      button    : "#car_next",
      key     : "right",
          },
    swipe: {
      onMouse: true,
      onTouch: true
      },
    scroll: {
        easing: "",
        duration: 1200
    }
  });
    });
</script>
<script>
  //CALL TESTIMONIAL ROTATOR
  $( function() {
    /*
    - how to call the plugin:
    $( selector ).cbpQTRotator( [options] );
    - options:
    {
      // default transition speed (ms)
      speed : 700,
      // default transition easing
      easing : 'ease',
      // rotator interval (ms)
      interval : 8000
    }
    - destroy:
    $( selector ).cbpQTRotator( 'destroy' );
    */
    $( '#cbp-qtrotator' ).cbpQTRotator();
  } );
</script>
<script>
  //CALL PRETTY PHOTO
  $(document).ready(function(){
    $("a[data-gal^='prettyPhoto']").prettyPhoto({social_tools:'', animation_speed: 'normal' , theme: 'dark_rounded'});
  });
</script>
<script>
  //MASONRY
  $(document).ready(function(){
  var $container = $('#content');
    $container.imagesLoaded( function(){
    $container.isotope({
    filter: '*',  
    animationOptions: {
     duration: 750,
     easing: 'linear',
     queue: false,   
     }
  });
  });
  $('#filter a').click(function (event) {
    $('a.selected').removeClass('selected');
    var $this = $(this);
    $this.addClass('selected');
    var selector = $this.attr('data-filter');
    $container.isotope({
       filter: selector
    });
    return false;
  });
  });
</script>
<script>
//ROLL ON HOVER
  $(function() {
  $(".roll").css("opacity","0");
  $(".roll").hover(function () {
  $(this).stop().animate({
  opacity: .8
  }, "slow");
  },
  function () {
  $(this).stop().animate({
  opacity: 0
  }, "slow");
  });
  });
</script>

<link rel="stylesheet" href="demo/css/style-switcher.css" media="screen"/>
<link rel="stylesheet" href="demo/css/colorpicker.css" media="screen"/>
<script type="text/javascript" src="demo/js/jquery.cookie.js"></script>
<script type="text/javascript" src="demo/js/styleswitch.js"></script>
<script type="text/javascript" src="demo/js/colorpicker.js"></script>
<script type="text/javascript" src="demo/js/switcher.js"></script>


<script>
function popupCenter(url, title, w, h) {
var left = (screen.width/2)-(w/2);
var top = (screen.height/2)-(h/2);
return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
}
</script>


<!-- JQUERY SCRIPTS 
<script src="plugins/jquery/jquery-1.11.1.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/flexslider/jquery.flexslider.js"></script>
<script src="plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>


<script type="text/javascript" src="js/jquery.zoomslider.js"></script>

<script src="plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
<script src="plugins/pop-up/jquery.magnific-popup.js"></script>
<script src="plugins/animation/waypoints.min.js"></script>
<script src="plugins/count-up/jquery.counterup.js"></script>
<script src="plugins/animation/wow.min.js"></script>
<script src="plugins/animation/moment.min.js"></script>
<script src="plugins/calender/fullcalendar.min.js"></script>
<script src="plugins/owl-carousel/owl.carousel.js"></script>
<script src="plugins/timer/jquery.syotimer.js"></script>
<script src="plugins/smoothscroll/SmoothScroll.js"></script>
<script src="js/custom.js"></script>

<script type="text/javascript" src="js/stars.js"></script>


<script src="admin757/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
  
  CKEDITOR.editorConfig = function( config ) {
    
  };

</script>



<script>
        CKEDITOR.replace( 'editor1' );
        CKEDITOR.replace( 'editor2' );
        CKEDITOR.replace( 'editor3' );
     CKEDITOR.replace( 'editor4' );
</script>

-->

