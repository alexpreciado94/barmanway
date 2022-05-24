import { Vista } from './vista.js';
import { Modelo } from './modelo.js';
import { VistaBack } from '../backend/js/vistaback.js';
import { ModeloBack } from '../backend/js/modeloback.js';
import { Rest } from './services/rest.js';

class Main {
  constructor() {
    window.onload = this.iniciar.bind(this);
  }
  iniciar(){
    this.vista = new Vista(this);
    this.modelo = new Modelo(Rest);
    this.vistaBack = new VistaBack(this);
    this.modeloBack = new ModeloBack(Rest);
  }
}
new Main();
