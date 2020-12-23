<div id="nahled" class="card">
<?php


foreach($jidlo as $item):
  $food = $item[0];
  if($food != null):
    ?>

       <a id="polozky" href="<?php echo base_url("jidlo/".$food->id); ?>">
         <h3 id="polozky"><b><?php echo $food->jmeno; ?></b></h3>
         
       </a>
 <img class="card-img-bottom" src="<?php echo base_url("assets/img/".$food->obrazek); ?>">


    <?php
  endif;
endforeach;
?>
   </div>
