<?php
  class Controlador {
    function __construct(){
      require_once './php/modelo.php';
      $this->modelo = new Modelo();

      $this->negocio = $this->modelo->getNegocio();
      $this->productos = $this->modelo->getProductos();
    }
    // Verificaciones y cosas de esas :)

  }
