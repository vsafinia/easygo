<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/easygo/stylesheet/stylesheet.css" rel="stylesheet">

  

  <link href="catalog/view/theme/easygo/stylesheet/main.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <script src="catalog/view/javascript/app.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header>
  <div id="navigator">
    <ul id="nav">

      <li class="nav_tab">
        <a href="<?php echo $home;?>"><p><?php echo $text_home;?></p></a>
      </li>
      <li class="nav_tab">
        <a href="index.php?route=product/search"><p>Packages</p></a>
      </li>

      <li class="nav_tab">
        <a href="<?php echo $special;?>"><p>Best Deals</p></a>
      </li>

      <?php if (!$logged) { ?>
        <li class="nav_tab">
          <a href="<?php echo $register;?>"><p><?php echo $text_register;?></p></a>
        </li>
        <li class="nav_tab">
          <a id="login"><p><?php echo $text_login;?></p></a>
        </li>
      <?php }else{?>
        <li class="nav_tab">
          <a href="<?php echo $account;?>"><p><?php echo $text_account;?></p></a>
        </li>
        <li class="nav_tab">
          <a href="<?php echo $logout;?>"><p><?php echo $text_logout;?></p></a>
        </li>

      <?php } ?>
      <li class="nav_tab">
        <a href="<?php echo $contact;?>"><p>Contact Us</p></a>
      </li>

    </ul>
  </div>


  <div class="menu-icon">
    <div class="line_one"></div>
    <div class="line_two"></div>
    <div class="line_three"></div>
  </div>

  <?php if($class!="common-home"){?>
  <div class="container">

    <nav id="top">
      <div class="container">
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <?php if ($logged) { ?>
                  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                  <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                  <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                  <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>
            <li>&nbsp</li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-3">
      </div>
      <div class="col-sm-5"><?php echo $search; ?></div>
    </div>
  </div>


  <?php } ?>
</header>






