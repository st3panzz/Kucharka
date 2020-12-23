<?php
Class Main_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    protected $table = 'kucharka';
    //nacteni knih
    public function load_knihy()
    {
        $query = $this->db->get($this->table);

        return $query->result();
    }


    public function get_recepty() {
        //$query = $this->db->get($this->table);
        $query = $this->db->query('SELECT propojeni.mnozstvi, ingredience.ingredience, jidlo.jmeno, jidlo.recept from propojeni JOIN ingredience ON propojeni.ingredience_id = ingredience.id JOIN jidlo ON propojeni.jidlo_id = jidlo.id');
        return $query->result();
        //$query = $this->db->get();
        //return $query->result();
    }
    public function get_autdilo() {
        //$query = $this->db->get($this->table);
        $query = $this->db->query('SELECT DISTINCT knihy.autor from knihy JOIN kategorie on kategorie.id_kategorie = knihy.kategorie_id_kategorie');
        return $query->result();
        //$query = $this->db->get();
        //return $query->result();
    }

    public function getIDIngredience($name){
      $this->db->select("id");
      $this->db->from("ingredience");
      $this->db->where("ingredience",$name);
      $return = $this->db->get()->result();
      return $return;
    }

    public function getFoodByID($ingredience){
      $this->db->select("jidlo_id");
      $this->db->from("propojeni");
      $this->db->where("ingredience_id",$ingredience);
      $return = $this->db->get()->result();
      return $return;
    }

    public function getFood($id_food){
        $this->db->select("id,jmeno,recept,obrazek");
        $this->db->from("jidlo");
        $this->db->where("id",$id_food);
        $return = $this->db->get()->result();
        return $return;
    }


}
