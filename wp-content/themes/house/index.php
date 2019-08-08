<?php get_header(); ?>

  <main class="main">
  <div class="container">
    <div class="main__title"><?php the_field('heading'); ?></div>
    <div class="main__text"><?php the_field('main_text'); ?>
    </div>
    <div class="main__img">
      <img src="<?php bloginfo('template_url'); ?>/assets/img/main-img.png " alt="">
    </div>
    <div class="project">
      <div class="project__title"><?php the_field('project_title'); ?></div>
      <?php 

      $posts = get_field('projects');

      if( $posts ): ?>
          <?php foreach( $posts as $post): ?>
              <?php setup_postdata($post); ?>
              <div class="project__item">
                <div class="project__name"><?php the_field('project_name'); ?></div>
                <div class="project__size"><?php the_field('project_size'); ?></div>
                <div class="project__area"><?php the_field('project_area'); ?></div>
                <div class="project__price"><?php the_field('project_price'); ?></div>
                <div class="project__images">
                  <div class="project__images-item"><img src="<?php the_field('project_images_item_first'); ?>" alt=""></div>
                  <div class="project__images-item"><img src="<?php the_field('project_images_item_second'); ?>" alt=""></div>
                </div>
                
              </div>
          <?php endforeach; ?>
          <?php wp_reset_postdata(); ?>
      <?php endif; ?>
    
    </div>
  </div>
</main>
	<div class="download">
  <div class="container">
    <img src="<?php bloginfo('template_url'); ?>/assets/img/home-download.png" alt="">
    <a href="<?php the_field('download_link'); ?>" download>СКАЧАТЬ ВЕСЬ КАТАЛОГ ДОМОВ</a>
  </div>
</div>
	<section class="gallery">
  <div class="container">
    <div class="gallery__title">
    <?php the_field('gallery_title'); ?>
    </div>
    <div class="gallery__text">
      <?php the_field('gallery_description'); ?>
    </div>
    <div class="gallery__inner">
      <?php the_field('gallery'); ?>
    </div>
    <div class="main__img">
      <img src="<?php bloginfo('template_url'); ?>/assets/img/main-img.png " alt="">
    </div>
  </div>
</section>
<?php get_footer(); ?>