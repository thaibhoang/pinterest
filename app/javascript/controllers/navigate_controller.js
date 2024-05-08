import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigate"
export default class extends Controller {
  static targets = ['link', 'navButton']

  connect() {
    let path = this.getPath()
    let button_id = this.pathToTarget(path)
    if (button_id !== null) {
      if (button_id === 0 ){
        this.highlightUnder(this.navButtonTargets[0]);
      }
      else if (button_id === 1){
        this.highlightUnder(this.navButtonTargets[1]);
      }
    }
  }

  getPath() {
    let path = this.linkTarget.dataset['path'];
    return path
  }

  pathToTarget(path) {
    if (/^\/users\/\d+$/.test(path) || /^\/users\/\d+\/_created$/.test(path)) {
      return 0;
    } else if (/^\/users\/\d+\/_saved$/.test(path)) {
      return 1;
    } else {
      return null;
    }
  }

  highlightUnder(element) {
    element.parentElement.classList.add("highlight-under");  
  }
}
