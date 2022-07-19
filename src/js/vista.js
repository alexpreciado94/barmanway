/**
 * @file Módulo "vista.js" que maneja la vista que se muestra al cliente.
 * @author alexpreciado94 <alexpreciado94@hotmail.com>
 * @copyright © 2022 All Rights Reserved
 */

 /**
  * @class Vista
  * Captura los elementos HTML que se usarán al navegar por la app.
  *
  * @param  {Object} main Contexto principal donde se ejecuta la app.
  *
  */
export class Vista {
  constructor(main){
    this.controlador = main;

    this.navButton = document.querySelector('nav > button');
    this.nav = document.querySelector('nav ul');

    this.eventos();
  }
  /**
   * Asigna el método que debe activarse al realizar alguna acción que afecte a
   * un elemento de la vista.
   *
   */
  eventos(){
    this.navButton.addEventListener('click', this.mostrar.bind(this, this.nav, true));
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
    if(elemento.style.display != 'none' && sw){
      sw = false;
    }
    if(sw){
      elemento.style.display = 'flex';
    }
    if(!sw){
      elemento.style.display = 'none';
    }
  }
}
