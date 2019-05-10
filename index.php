<?php

/**
 * @package Script Pulsa Online
 * @version 1.2
 * @author Engky Datz * @link http://okepulsa.id
 * @link http://facebook.com/Engky09 * @link http://okepulsa.id * @link http://www.bukalapak.com/engky09
 * @copyright 2015 -2016
 */

include('includes/base.php');
$active_page = 'home';
$main_content = false;
$query = $pdo->query("SELECT * FROM berita ORDER BY tanggal DESC LIMIT 5");
$berita = $query->fetchAll();
?>
<?php include ('includes/header.php')?>
<div style="margin-top: 15px;" class="hidden-xs">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="">
      </li>
      <li data-target="#carousel-example-generic" data-slide-to="1" class="active">
      </li>
      <li data-target="#carousel-example-generic" data-slide-to="2" class="">
      </li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img data-src="holder.js/1140x230/auto/#777:#555/text:First slide" alt="Voucher Game" src="<?php echo $set['site_url'];?>assets/banner-1.png" data-holder-rendered="true"/>
        <div class="carousel-caption">
          <h3>
            
          </h3>
          <p>
            
          </p>
        </div>
      </div>
      <div class="item">
        <img data-src="holder.js/1140x230/auto/#666:#444/text:Second slide" alt="Game" src="<?php echo $set['site_url'];?>assets/banner-1.png" data-holder-rendered="true"/>
        <div class="carousel-caption">
          <h3>
            
          </h3>
          <p>
            
          </p>
        </div>
      </div>
      <div class="item">
        <img data-src="holder.js/1140x230/auto/#555:#333/text:Third slide" alt="Third slide [1140x230]" src="<?php echo $set['site_url'];?>assets/banner-1.png" data-holder-rendered="true"/>
        <div class="carousel-caption">
          <h3>
            
          </h3>
          <p>
            
          </p>
        </div>
      </div>
    </div>
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div>
</div>
<div class="row" style="margin-top: 15px;">
  <div class="col-sm-8">
    <div class="box">
    <div>
      <h3 style="margin-top: 0;">
        ZReload - Pulsa & Paket Internet Murah
      </h3>
    </div>
    <p><marquee style="font-size: 24px;padding: 5px 0; color: white; background-color: #EEA235;">SISTEM OTOMATIS 24 JAM</marquee></p>
    <div class="row">
        <div class="col-sm-4">
            <img class="img-responsive" title="<?php echo __e($set['site_name']);?>" alt="<?php echo __e($set['site_name']);?>" src="<?php echo $set['site_url'];?>assets/img1.png"/>
        </div>
        <div class="col-sm-8">
            <div id="description" style="text-align: justify;">Isi pulsa,Token PLN, Voucher Game Online, 24 jam Otomatis dan tanpa registrasi, praktis dan cepat. Isi pulsa tanpa harus antri dan tidak perlu keluar rumah.</div>
            <p style="margin-top: 15px;"><strong>Produk Kami :</strong></p>
            <p>
            <i class="glyphicon glyphicon-check"></i> Pulsa Telepon<br/>
			      <i class="glyphicon glyphicon-check"></i> Paket Internet<br/>
            <i class="glyphicon glyphicon-check"></i> Voucher Game Online<br/>
            <i class="glyphicon glyphicon-check"></i> Premium Account<br/>
            <i class="glyphicon glyphicon-check"></i> Token PLN / PLN Prabayar<br/>
			<p style="margin-top: 15px;"><strong>Kenapa di ZReload </strong></p>
			<i class="glyphicon glyphicon-check"></i> Harga Murah<br/>
			<i class="glyphicon glyphicon-check"></i> Proses Reload Pulsa Cepat<br/>
			<i class="glyphicon glyphicon-check"></i> Pembayaran Otomatis<br/>
            <div class="text-center">
                <a class="btn btn-warning btn-lg btn-block" href="<?php echo $set['site_url'];?>order.php"><i class="fas fa-cart-plus"></i> Beli / Order</a>
            </div>
        </div>
    </div>
    </div>
  </div>
  <div class="col-sm-4">
    <?php if ($berita):?>
      <div class="list-group">
        <?php foreach ($berita as $b):?>
        <a class="list-group-item" href="<?php echo SITE_URL?>berita.php/<?php echo date('Y/m/d',$b->tanggal);?>/<?php echo str_link($b->judul); ?>?id=<?php echo $b->id; ?>" title="<?php echo __e($b->judul)?>">
            <span><?php echo __e($b->judul); ?>
            </span>
            &nbsp;
            <span class="text-muted"><small><i>(<?php echo format_tanggal($b->tanggal)?>)</i></small></span>
        </a>
        <?php endforeach?>
        <div class="list-group-item text-right"><a href="berita.php">Berita lainnya &raquo;</a></div>
      </div>
      <?php else:?>
    <?php endif?>
  </div>
</div>
<?php include ('includes/footer.php'); ?>