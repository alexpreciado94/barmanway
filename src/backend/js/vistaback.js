export class VistaBack {
  constructor(main){
    this.controlador = main;

    this.logMain = document.querySelector('.logMain');
    this.email = document.querySelector('.logMain input[type="email"]');
    this.password = document.querySelector('.logMain input[type="password"]');
    this.logButton = document.querySelector('.logMain div button');
    this.eventos();
  }
  eventos(){
    this.logButton.addEventListener('click', this.login.bind(this));
  }
  mostrar(elemento, sw){
    if(sw){
      elemento.style.display = 'flex';
    }
    if(!sw){
      elemento.style.display = 'none';
    }
  }
  login(){
    this.controlador.modeloBack.login(this.email.value, this.password.value);
  }
}
