/**
 * @file Módulo "modeloback.js" que maneja las conexiones con el servidor para gestionar la
 * información que se almacena en el servidor.
 * @author alexpreciado94 <alexpreciado94@hotmail.com>
 * @copyright © 2022 All Rights Reserved
 */

 /**
  * @class ModeloBack
  * Realiza la conexion con la API del servidor.
  *
  * @param  {Object} Rest Servicio que proporciona la librería de métodos para
  * enviar y recibir peticiones.
  *
  */
export class ModeloBack {
  constructor(Rest) {
    this.rest = Rest;
  }

  /**
   * Realiza una petición HTTP por el método seguro POST.
   *
   * @param  {string} email Valor del campo donde el gestor introduce su dirección de correo electrónico asignada
   * a los datos de acceso en la APP.
   * @param  {string} password Valor del campo donde el gestor introduce la cadena de caracteres secreta que
   * verifica la propiedad de un perfil de usuario con capacidades de administración.
   * @return {Object} Resultado de la peticion.
   *
   */
  login(email, password){
    return this.rest.post('login', {'email': email, 'password': password})
    .then((respuesta)=> {console.log(respuesta);})
  }
}
