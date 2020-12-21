
<?php


foreach($jidlo as $item):
  $food = $item[0];
  if($food != null):
    ?>
     <div class="card">
       <a id="polozky" href="<?php echo base_url("jidlo/".$food->id); ?>">
         <h3 id="polozky"><b><?php echo $food->jmeno; ?></b></h3>
       </a>
     </div>

    <?php
  endif;
endforeach;
?>
