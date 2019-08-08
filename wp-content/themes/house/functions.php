<?php

  function house_styles(){
    wp_enqueue_style('magnific-popUp', get_template_directory_uri() . '/assets/css/magnific-popup.css');
    wp_enqueue_style('main-style', get_template_directory_uri() . '/assets/css/main.css');
  }
  add_action('wp_enqueue_scripts', 'house_styles');

  function my_enqueue_scripts(){
    wp_deregister_script('jquery');
    wp_register_script('jquery', get_template_directory_uri() . '/assets/js/jquery-3.4.1.min.js', true, null, true);
    wp_enqueue_script('jquery');
    wp_enqueue_script('magnific-popUp', get_template_directory_uri() . '/assets/js/jquery.magnific-popup.min.js', 'jquery', null, true);
    wp_enqueue_script('main scripts', get_template_directory_uri() . '/assets/js/main.js', 'jquery', null, true);
  }
  add_action('wp_enqueue_scripts', 'my_enqueue_scripts');