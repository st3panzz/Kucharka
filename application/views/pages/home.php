


<form action="<?php echo base_url("vyhledat-recepty"); ?>" method="POST">

  <div class="menu">

    <div id="accordion">
      <div class="row">
<div class="col-lg-4 col-md-4 col-sm-12">
    <div id="card" class="card">
      <div id="nazev"class="card-header" id="headingOne">
        <h5 class="mb-0">
          <a id="link" class="btn btn-link text-decoration-none " data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          Zelenina
        </a>
      </h5>
    </div>




    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">

        <div class="form-check">
  <input class="form-check-input" type="checkbox" name="ingredience[]" value="cibule" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Cibule
</label>
      </div>
      <div class="form-check">
<input class="form-check-input" type="checkbox" name="ingredience[]" value="celer" id="defaultCheck2">
<label class="form-check-label" for="defaultCheck2">
Celer
</label>
    </div>
    <div class="form-check">
<input class="form-check-input" type="checkbox" name="ingredience[]" value="pórek" id="defaultCheck3">
<label class="form-check-label" for="defaultCheck3">
Pórek
</label>
  </div>
  <div class="form-check">
<input class="form-check-input" type="checkbox"  name="ingredience[]" value="mrkev" id="defaultCheck4">
<label class="form-check-label" for="defaultCheck4">
Mrkev
</label>
  </div>
<div class="form-check">
<input class="form-check-input" type="checkbox"  name="ingredience[]" value="brokolice" id="defaultCheck5">
<label class="form-check-label" for="defaultCheck5">
Brokolice
</label>
  </div>
<div class="form-check">
<input class="form-check-input" type="checkbox"  name="ingredience[]" value="kyselá okurka" id="defaultCheck6">
<label class="form-check-label" for="defaultCheck6">
Kyselá okurka
</label>
  </div>
  <div class="form-check">
<input class="form-check-input" type="checkbox"  name="ingredience[]" value="salátová okurka" id="defaultCheck7">
<label class="form-check-label" for="defaultCheck7">
Salátová okurka
</label>
  </div>
      <div class="form-check">
<input class="form-check-input" type="checkbox"  name="ingredience[]" value="kořenová zelenina" id="defaultCheck8">
<label class="form-check-label" for="defaultCheck8">
Kořenová zelenina
</label>
</div>

  </div>
</div>
</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-12">

  <div id="card" class="card">
    <div id="nazev" class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <a id="link" class="btn btn-link " data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Ovoce
        </a>
      </h5>
    </div>


    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        <div class="form-check">
  <input class="form-check-input" type="checkbox"  name="ingredience[]" value="citronová šťáva" id="defaultCheck9">
  <label class="form-check-label" for="defaultCheck9">
    Citronová šťáva
  </label>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-lg-4 col-md-4 col-sm-12">
  <div id="card" class="card">
    <div id="nazev" class="card-header" id="headingThree">
      <h5 class="mb-0">
        <a id="link" class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="faLse" aria-controls="collapseThree">
          Maso
        </a>
      </h5>
    </div>

    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        <div class="form-check">
  <input class="form-check-input" type="checkbox"  name="ingredience[]" value="hovězí svíčková" id="defaultCheck10">
  <label class="form-check-label" for="defaultCheck10">
    Hovězí svíčková
  </label>
        </div>
      </div>
    </div>
        </div>
      </div>
    </div>
</div>
</div>



  <br>
<button type="submit" class="btn btn-lg btn-primary col-lg-12" enabled>Hledej</button>





</form>
