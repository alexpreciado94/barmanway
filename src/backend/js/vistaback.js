/**
 * @file Módulo "vistaback.js" que maneja la vista que se muestra a los gestores.
 * @author alexpreciado94 <alexpreciado94@hotmail.com>
 * @copyright © 2022 All Rights Reserved
 */

 /**
  * @class VistaBack
  * Captura los elementos HTML que se usarán al navegar por la app.
  *
  * @param  {Object} main Contexto principal donde se ejecuta la app.
  *
  */
export class VistaBack {
  constructor(main){
    this.controlador = main;

    this.logMain = document.querySelector('.logMain');
    this.email = document.querySelector('.logMain input[type="email"]');
    this.password = document.querySelector('.logMain input[type="password"]');
    this.logButton = document.querySelector('.logMain div button');
    this.eventos();
  }

  /**
   * Asigna el método que debe activarse al realizar alguna acción que afecte a
   * un elemento de la vista.
   *
   */
  eventos(){
    this.logButton.addEventListener('click', this.login.bind(this));
  }

  /**
   * Manejador para alternar la visibilidad de un elemento HTML cambiando
   * la propiedad CSS que define su comportamiento visual.
   *
   * @param  {HTMLElement} elemento Referencia a la etiqueta HTML del elemento.
   * @param  {boolean} sw Conmutador que indica si se debe mostrar u ocultar.
   *
   */
  mostrar(elemento, sw){
    if(sw){
      elemento.style.display = 'flex';
    }
    if(!sw){
      elemento.style.display = 'none';
    }
  }

  /**
   * Muestra el panel de administración si las credenciales de inicio de sesión son correctas.
   *
   */
  login(){
    this.controlador.modeloBack.login(this.email.value, this.password.value);
  }
}
