<?php
  class ModeloBack {
    function __construct(){
      require_once './conexion.php';
      $this->conexion = new Conexion();
    }
    function login($email, $password){
      $sql = "select idUsuario, password from usuario where correo= ?";
      $stmt = $this->conexion->conexion->prepare($sql);
      $stmt->bind_param('s', $email);
      $stmt->execute();
      $resultado = $stmt->get_result();
      $sw = false;
      $fila = $this->operacionesdb->extraerFila($resultado);
      if(isset($fila['idUsuario'])){
        if(password_verify($datosInicio['password'], $fila['password'])){
          session_start();
          $_SESSION['idUsuario'] = $fila['idUsuario'];
          $sw = true;
          $this->operacionesdb->cerrarConexion();
          header('Location: mostrarPreferencias.php');
        }
      }
      if(!$sw){
        $this->error(1);
      }
    }
    function error($errno){
      switch ($errno) {
        case 0:
          echo 'El correo no pertenece a la Fundación';
          break;
        case 1:
          echo 'El correo o la contraseña son incorrectos';
          break;
        case 1062:
          echo 'El correo introducido ya está registrado';
          break;
        case 1406:
          echo 'Uno de los campos tiene una longitud mayor de la permitida';
          break;
        default:
          echo 'Ha ocurrido un error inesperado';
          break;
      }
	  }
  }
