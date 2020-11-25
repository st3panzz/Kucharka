<?php

class Pages extends CI_Controller {

    public function __construct(){
        parent::__construct();
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
}
