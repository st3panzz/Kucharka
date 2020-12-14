<div class="menu">
  <div id="accordion">
    <div class="card">
      <div class="card-header" id="headingOne">
        <h5 class="mb-0">
          <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Zelenina
        </button>
      </h5>
    </div>


    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">

        <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Cibule
  </label>
      </div>
      <div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Celer
</label>
    </div>
    <div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Pórek
</label>
  </div>
  <div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Mrkev
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Brokolice
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Kyselá okurka
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Salátová okurka
</label>
</div>
<div class="form-check">
<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
<label class="form-check-label" for="defaultCheck1">
Kořenová zelenina
</label>
</div>

      </div>
    </div>
  </div>
  </div>
  <br />

  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link " data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          Ovoce
        </button>
      </h5>
    </div>


    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Cibule
  </label>
      </div>
    </div>
  </div>

  <br>

  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          Maso
        </button>
      </h5>
    </div>

    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
  </div>
  <br>
  <button type="button" class="btn btn-lg btn-primary" enabled>Primary button</button>
</div>

<div class="column">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Název</th>
                <th>ID</th>
                <th>Recept</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($kucharka as $row): ?>
                <tr>
                    <td><?= $row->jmeno ?></td>
                    
                    <td><?= $row->recept ?></td>

                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <ul class="pagination">
        <li class="page-item"><?php echo $links; ?></li>
    </ul>



</div>
</div>
