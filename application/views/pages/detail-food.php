<?php


foreach($jidlo as $recipe):

  if($recipe != null):
    ?>
    <br />
     <div id="rec"class="card">
        <h1 id="nadpis_recept"><?php echo $recipe->id ?> . <?php echo $recipe->jmeno ?></h1>
<br />
  <div>
     <p class="recept">
         <?php echo $recipe->recept ?>
     </p>


     </div>
</div>
    <?php
  endif;
endforeach;
?>
