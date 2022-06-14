/**
 * @file Módulo principal "main.js" que gestiona los módulos de la app.
 * @author alexpreciado94 <alexpreciado94@hotmail.com>
 * @copyright © 2022 All Rights Reserved
 */

import { Vista } from './vista.js';
import { Modelo } from './modelo.js';
import { VistaBack } from '../backend/js/vistaback.js';
import { ModeloBack } from '../backend/js/modeloback.js';
import { Rest } from './services/rest.js';


/**
 * @class Main
 * Inicializa JavaScript al cargar la vista.
 * Sirve de controlador para enrutar la conexion entre todos los demás módulos
 * y proveer los servicios para intercambiar información con la API del Servidor.
 *
 **/
class Main {
  constructor() {
    window.onload = this.iniciar.bind(this);
  }

  /**
   * Organiza las llamadas a las diferentes clases que proveen de los métodos
   * que gestionan la interfaz del cliente.
   *
   **/
  iniciar(){
    this.vista = new Vista(this);
    this.modelo = new Modelo(Rest);
    this.vistaBack = new VistaBack(this);
    this.modeloBack = new ModeloBack(Rest);
  }
}
new Main();
