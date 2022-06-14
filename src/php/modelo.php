<?php
  class Modelo {
    function __construct(){
      require_once './php/conexion.php';
      $this->conexion = new Conexion();
    }
    function getNegocio(){
      $sql = 'select * from negocio
      where idNegocio = 1';
      $resultado = $this->conexion->consultar($sql);
      return $this->conexion->extraerFila($resultado);
    }
    function getProductos(){
      $sql = 'select * from producto
      inner join categoria on producto.idCategoria = categoria.idCategoria
      where categoria.idNegocio = 1';
      return $this->extraerArray($this->conexion->consultar($sql));
    }
    function extraerArray($resultado){
      $productos = [];
      while($fila = $this->conexion->extraerFila($resultado)){
        array_push($productos, $fila);
      }
      return $productos;
    }
  }
