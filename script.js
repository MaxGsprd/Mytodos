// CODE POUR POP UP D'INSCRIPTION

var openRegister = document.querySelector(".registerLink");

if(openRegister){
    openRegister.addEventListener("click", registerPopUp, false);
}

var showRegister = document.querySelector(".registerWindow");

var close = document.querySelector(".close-register");
close.addEventListener('click',registerPopUp);

function registerPopUp(event){

  event.preventDefault;
  showRegister.classList.toggle('register-is-showing');
}

// AFFICHAGE DES COMMENTS LORS DU SURVOL DES ENTRIES

class Tooltip{

  //applique le systeme de bulle d'info sur les éléments
  static bind (selector){
    document.querySelectorAll(selector).forEach(element => new Tooltip(element))
  }

  constructor (element) {

    this.element = element
    this.title = element.getAttribute('title')
    this.tooltip = null
    this.element.addEventListener('mouseover', this.mouseOver.bind(this))
    this.element.addEventListener('mouseout', this.mouseOut.bind(this))

  }

  mouseOver (){ //survol et calcul emplacement tooltip

    let tooltip = this.createTooltip()
    let width = this.tooltip.offsetWidth
    let height = this.tooltip.offsetHeight
    let left = this.element.offsetWidth / 2 - width / 2 + this.element.getBoundingClientRect().left + document.documentElement.scrollLeft
    let top = this.element.getBoundingClientRect().top - height - 15 + document.documentElement.scrollTop
    if (left < 20){
      left = 20
    }
    tooltip.style.left = left + "px"
    tooltip.style.top = top + "px"
    tooltip.classList.add('visible')

  }
  mouseOut (){
    if (this.tooltip !== null){
      this.tooltip.classList.remove('visible')
      this.tooltip.addEventListener('transitionend', () => {
        if (this.tooltip !== null){
          document.body.removeChild(this.tooltip)
          this.tooltip = null

        }
      })
    }
  }
  createTooltip (){ // creation de l'infobulle
    if (this.tooltip === null) {
    let tooltip = document.createElement('div')
    tooltip.innerHTML = this.title
    tooltip.classList.add('tippy')
    document.body.appendChild(tooltip)
    this.tooltip = tooltip
  }
    return this.tooltip

  }
}

Tooltip.bind('.entries[title]')

//////////////////////// SUPPRESSION DES entrées

var supp = document.querySelectorAll('.entries');


function showBin(event){

    event.preventDefault;
    this.children[1].classList.toggle('bin-is-showing');
}

for (var i = 0; i < supp.length; i++) {

    supp[i].addEventListener('click', showBin);
}
