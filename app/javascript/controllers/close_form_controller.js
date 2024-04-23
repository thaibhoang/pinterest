import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="close-form"
export default class extends Controller {
  static targets = ["container", "button"]
  connect() {
    this.containerTarget.addEventListener('click', (event) => {
      if (event.target === this.containerTarget) {
        this.buttonTarget.click()
      }
    });
    this.buttonTarget.addEventListener('click', (event) => {
      event.preventDefault();
      this.containerTarget.remove();
    });
  }
}
