import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigate"
export default class extends Controller {
  static targets = ['link', 'navButton']

  connect() {
    let path = this.getPath()
    let button_id = this.pathToTarget(path)
    if (button_id >= 0 && button_id < 3 ) {
      this.highlight(this.navButtonTargets[button_id])
    }
    else if (button_id === 4 || button_id === 3 ){
      this.highlight(this.navButtonTargets[3]);
      this.highlightUnder(this.navButtonTargets[4]);
    }
    else if (button_id === 5){
      this.highlight(this.navButtonTargets[3]);
      this.highlightUnder(this.navButtonTargets[5]);
    }
  }

  getPath() {
    let path = this.linkTarget.dataset['path'];
    return path
  }

  pathToTarget(path) {
    if (path === "/") {
      return 0;
    } else if (path === "/pins/new") {
      return 1;
    } else if (/^\/users\/\d+\/boards\/new$/.test(path)) {
      return 2;
    } else if (/^\/users\/\d+$/.test(path)) {
      return 3;
    } else if (/^\/users\/\d+\/_created$/.test(path)) {
      return 4;
    } else if (/^\/users\/\d+\/_saved$/.test(path)) {
      return 5;
    } else {
      return null;
    }
  }

  highlight(element) {
    element.classList.add("home");
  }

  highlightUnder(element) {
    element.parentElement.classList.add("highlight-under");  
  }
}
