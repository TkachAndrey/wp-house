<footer class="footer">
  <div class="container">
    <a class="phone" href="tel:<?php the_field('phone_number'); ?>"><?php the_field('phone_number'); ?></a>
    <a class="footer__email" href="mailto:<?php the_field('contact_email'); ?>"><?php the_field('contact_email'); ?></a>
  </div>
</footer>
<?php wp_footer(); ?>
</body>
</html>