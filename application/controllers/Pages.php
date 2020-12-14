<?php

class Pages extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('Main_model');
    }


    public function view(){


            $page = "home";

            if(!file_exists(APPPATH.'views/pages/'.$page.'.php')){
               show_404();
            }

            $data['title'] = "Vítejte na mém webu";
          //  $data['polozky'] = $this->Cetba_model->get_menu_polozky();

            //print_r($data['knihy']);

            $this->load->view('templates/header',$data);
            $this->load->view('pages/'.$page, $data);
            $this->load->view('templates/footer');
    }

    public function model()
      {
          $this->load->model('Main_model');
          $config = array();
          $data['kucharka'] = $this->Main_model->get_recepty();
          $page = 'home';
          $this->load->view('templates/header',$data);
          $this->load->view('pages/'.$page, $data);
          $this->load->view('templates/footer');


          //$this->load->view('layout/navbar', $data);

          //$this->load->view('pages/footer');
      }

      public function getRecipe()
    {
      $ingredience = $this->input->post("ingredience");
      $array_of_id = array();
      $eas = array();
      $food = array();
      foreach($ingredience as $item):
        $id = $this->Main_model->getIDIngredience($item);
        array_push($array_of_id,(int)$id[0]->id);
        $eas = $this->Main_model->getFoodByID((int)$id[0]->id);
        if($eas != null){
          foreach($eas as $row):
            $id = (int)$row->jidlo_id;
            array_push($food, $this->Main_model->getFood($id));
          endforeach;
        }
      endforeach;
      $data["jidlo"] = $food;
      $page = "search-recipe";
      $data['title'] = "Hledám recept";
      $this->load->view('templates/header',$data);
      $this->load->view('pages/'.$page, $data);
      $this->load->view('templates/footer');
    }

    public function detailFood($id_food)
    {
      $page = "detail-food";
      $data["title"] = "Detail jídla";
      $data["jidlo"] = $this->Main_model->getFood($id_food);
      $this->load->view('templates/header',$data);
      $this->load->view('pages/'.$page, $data);
      $this->load->view('templates/footer');
    }

}
