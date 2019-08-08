<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="keywords" content=""/>
	<meta name="Description" content=""/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <title><?php bloginfo('description'); ?></title>
  <?php wp_head(); ?>
</head>
<body> 
	<header class="header" style="background-image: url(<?php the_field('background_image'); ?>);">
  <div class="header__inner">
    <img src="<?php bloginfo('template_url'); ?>/assets/img/home.png" alt="">
    <div class="header__name"><?php the_field('site_name'); ?></div>
    <a class="phone" href="tel:<?php the_field('phone_number'); ?>"><?php the_field('phone_number'); ?></a>
    <div class="header__title"><?php the_field('main_slogan'); ?></div>
    <div class="header__sale">
      <img src="<?php the_field('promotion_sale_image'); ?>" alt="">
    </div>
  </div>
</header>