<?php

/**
 * @package Script Pulsa Online
 * @version 1
 * @author Engky Datz
 * @link http://okepulsa.id
 * @link http://facebook.com/Engky09
 * @link http://okepulsa.id
 * @link https://www.bukalapak.com/engky09
 * @copyright 2015 -2016
 */

$active_page = isset($active_page) ? $active_page : '';
$page_title = isset($page_title) ? __e($page_title) : __e($set['site_name']);
$page_description = isset($page_description) ? __e($page_description) : 'Isi Ulang Instan Pulsa Dengan Cepat Untuk Semua Operator, Online 24 Jam Non Stop, Pembayaran Menggunakan Bank Transfer Dan Paypal';
$page_keywords = isset($page_keywords) ? __e($page_keywords) : 'pulsa murah, paket data murah, isi pulsa online murah terpercaya, pulsa bekasi, jual pulsa online, pulsa online bekasi, jasa pulsa online, premium spotify, paket data murah';
@unlink(APP_PATH.'/error_log');
@unlink(APP_PATH.'/../error_log');
?>
<?php if (!isset($_GET['__modal'])):?>
<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en-gb" dir="ltr">
  
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content="keywords" content="<?php echo $page_keywords;?>"/>
    <meta property="og:url" content="http://<?php echo strip_tags($_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);?>"/>
    <meta property="og:title" content="<?php echo $page_title;?>"/>
    <?php if (isset($page_image)):?>
    <meta property="og:image" content="<?php echo $page_image;?>"/>
    <?php endif;?>
    <meta property="og:type" content="website"/>
    <meta property="og:description" content="<?php echo $page_description;?>"/>
    <meta name="msvalidate.01" content=""/>
    <meta name="google-site-verification" content=""/>
    <meta name="description" content="<?php echo $page_description;?>"/>
    <title>
      <?php echo $page_title;?>
    </title>
    <link href="<?php echo SITE_URL?>assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="<?php echo SITE_URL?>assets/css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="<?php echo SITE_URL?>assets/css/custom.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <?php echo isset($head) ? $head : ''?>
  </head>
  
  <body>
    <div class="container">
      <div class="logo">
        <img src="<?php echo $set['site_url'];?>assets/logo-zpulsa.png" alt="<?php echo __e($set['site_name']);?>"/>
      </div>
      <nav class="navbar navbar-default hidden-print">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?php echo $set['site_url'];?>index.php"><?php echo __e($set['site_name']);?></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            <li class="<?php echo $active_page == 'home' ? 'active' : ''?>">
              <a href="<?php echo SITE_URL?>index.php">Home</a>
            </li>
            <li class="<?php echo $active_page == 'order' ? 'active' : ''?>">
              <a href="<?php echo SITE_URL?>order.php">Order</a>
            </li>
            <li class="<?php echo $active_page == 'status' ? 'active' : ''?>">
              <a href="<?php echo SITE_URL?>status.php">Status Order</a>
            </li>
            <li class="<?php echo $active_page == 'testimonial' ? 'active' : ''?>">
              <a href="<?php echo SITE_URL?>testimonial.php">Testimonial</a>
            </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="<?php echo $active_page == 'hubungi_kami' ? 'active' : ''?>">
              <a href="<?php echo SITE_URL?>hubungi_kami.php">Hubungi Kami</a>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
      <?php if (!isset($main_content)):?>
      <div class="main-content">
      <?php endif;?>
<?php else:?>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModal-label"><?php echo __e($set['site_name']);?></h4>
        </div>
        <div class="modal-body">
<?php endif?>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/58dd2808f97dd14875f5adf6/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->