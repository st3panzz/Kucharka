<?php


foreach($jidlo as $item):
  $food = $item[0];
  if($food != null):
    ?>
    <a href="<?php echo base_url("jidlo/".$food->id); ?>">
      <h3><?php echo $food->jmeno; ?></h3>
    </a>
    <?php
  endif;
endforeach;
?>
