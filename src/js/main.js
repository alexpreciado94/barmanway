import { Vista } from 'vista.js';
import { Modelo } from 'modelo.js';

class Main {
  constructor() {
    this.vista = new Vista(this);
    this.modelo = new Modelo();

    windows.onload = this.iniciar.bind(this);
  }
}

new Main();
