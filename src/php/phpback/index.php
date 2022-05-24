<?php
  class Index {
    function __construct(){
      require_once './controladorback.php';

      header("Access-Control-Allow-Origin:*");
      header('Content-Type: application/json; charset=utf-8');

      $datos = json_decode(file_get_contents('php://input'), true);
      $controlador = new ControladorBack();

      switch ($_SERVER['PATH_INFO']){
        case '/login':
          echo json_encode($controlador->login($datos['email'], $datos['password']));
          break;
        default:
          echo json_encode('error');
          break;
      }
    }
  }
  new Index();
