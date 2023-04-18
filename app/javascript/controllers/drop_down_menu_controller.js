import { Controller } from "@hotwired/stimulus"

const entering = ["transition", "ease-out", "duration-100"];
const enteringFrom = ["transform", "opacity-0", "scale-95"];
const enteringTo = ["transform", "opacity-100", "scale-100"];
const leaving = ["transition", "ease-in", "duration-75"];
const leavingFrom = ["transform", "opacity-100", "scale-100"];
const leavingTo = ["transform", "opacity-0", "scale-95"];
// Connects to data-controller="drop-down-menu"
export default class extends Controller {
  static targets = ['linkContainer'];

  connect() {
  }

  toggle(){
    if(this.linkContainerTarget.classList.contains("hidden")){
      this.open();
    }else{
      this.close();
    }
  }
  open(){
    DOMTokenList.prototype.remove.apply(this.linkContainerTarget.classList, leaving.concat(leavingFrom).concat(leavingTo))
    this.linkContainerTarget.classList.remove("hidden");
    DOMTokenList.prototype.add.apply(this.linkContainerTarget.classList, entering.concat(enteringFrom))
    setTimeout( () => {
      DOMTokenList.prototype.add.apply(this.linkContainerTarget.classList, enteringTo);
    });
  }

  close(){
    DOMTokenList.prototype.remove.apply(this.linkContainerTarget.classList, entering.concat(enteringFrom).concat(enteringTo));
    DOMTokenList.prototype.add.apply(this.linkContainerTarget.classList, leaving.concat(leavingFrom));
    setTimeout( () => {
        DOMTokenList.prototype.remove.apply(this.linkContainerTarget.classList, leavingFrom);
        DOMTokenList.prototype.add.apply(this.linkContainerTarget.classList, leavingTo);
        this.linkContainerTarget.addEventListener('transitionend', () => {
          this.linkContainerTarget.classList.add("hidden");
        }, { once: true });
    });
  }
}
