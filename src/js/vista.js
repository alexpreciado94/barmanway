class Vista {
  constructor(main){
    this.logMain = getElementByClassName('logMain')[0];
    this.tabs = querySelectorAll('.tabs ul li');
    this.tabsText = querySelectorAll('.tabs p');
  }
  mostrar(elemento, sw){
    if(sw){
      elemento.style.display = 'flex';
    }
    if(!sw){
      elemento.style.display = 'none';
    }
  }
  activarTab(){
    this.tabs.forEach((tab, i)=>{
      this.tabs[i].addEventListener('click', ()=>{
        this.tabs.forEach((tab, i)=>{
          this.tabs[i].classList.remove('tabActivo');
          this.mostrar(this.tabsText[i], false);
        });
        this.tabs[i].classList.remove('tabActivo');
        this.mostrar(this.tabsText[i], true);
      });
    });
  }
}
