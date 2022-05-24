<?php
	class Conexion{
		function __construct(){
			require_once './php/configdb.php';
			$this->conexion = new mysqli(SERVIDOR, USUARIO, CONTRASENA, BASEDATOS);
		}
    function consultar($sql){
      return $this->conexion->query($sql);
    }
		function extraerFila($resultado){
			return $resultado->fetch_assoc();
		}
  }
