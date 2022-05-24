export class Vista {
  constructor(main){
    this.controlador = main;

    this.tabs = document.querySelectorAll('.tabs ul li');
    this.tabsText = document.querySelectorAll('.tabs>div');

    this.eventos();
  }
  eventos(){
    this.tabs.forEach((tab, i)=>{
      this.tabs[i].addEventListener('click', this.activarTab.bind(this, i));
    });
  }
  mostrar(elemento, sw){
    if(sw){
      elemento.style.display = 'block';
    }
    if(!sw){
      elemento.style.display = 'none';
    }
  }


  activarTab(i){
    this.tabs.forEach((tab, i)=>{
      this.tabs[i].classList.remove('tabActivo');
      this.mostrar(this.tabsText[i], false);
    });
    this.tabs[i].classList.add('tabActivo');
    this.mostrar(this.tabsText[i], true);
  }
}
