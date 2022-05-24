<?php
  class ControladorBack {
    function __construct(){
      require_once './phpback/modeloback.php';
      $this->modelo = new ModeloBack();
    }
    // Verificaciones y cosas de esas :)
    function login($email, $password){
      return $this->modelo->login($email, $password);
    }
  }
