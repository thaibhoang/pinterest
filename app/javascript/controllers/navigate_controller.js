import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigate"
export default class extends Controller {
  static targets = ['link', 'navButton']

  connect() {
    let path = this.getPath()
    let button_id = this.pathToTarget(path)
    if (button_id != null) {
      this.highlight(this.navButtonTargets[button_id])
    }
  }

  getPath() {
    let path = this.linkTarget.dataset['path'];
    return path
  }

  pathToTarget(path) {
    if (path == "/")
      {return 0;}
    else if (path == "/pins/new")
      {return 1;}
    else if (/^\/users\/\d+\/boards\/new$/.test(path))
      {return 2;}
    else if (/^\/users\/\d+$/.test(path))
      {return 3;}
    else
      { console.log(path);
        return null;}
  }

  highlight(element) {
    element.classList.add("home");
  }
}
