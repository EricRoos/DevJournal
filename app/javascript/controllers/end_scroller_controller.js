import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="end-scroller"
export default class extends Controller {
  connect() {
    console.log("%o - %o", this.element.scrollLeft, this.element.scrollWidth);
    console.log(this.element);
    this.element.scrollLeft = this.element.scrollWidth;
    console.log(this.element.scrollLeft);
  }
}
