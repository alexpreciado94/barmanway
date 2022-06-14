/**
 * @file Módulo "modelo.js" que maneja las conexiones con el servidor para recibir la
 * información que se muestra al cliente.
 * @author alexpreciado94 <alexpreciado94@hotmail.com>
 * @copyright © 2022 All Rights Reserved
 */

 /**
  * @class Modelo
  * Realiza la conexion con la API del servidor.
  *
  * @param  {Object} Rest Servicio que proporciona la librería de métodos para
  * enviar y recibir peticiones.
  *
  */
export class Modelo {
  constructor(Rest) {
    this.rest = Rest;
  }
}
