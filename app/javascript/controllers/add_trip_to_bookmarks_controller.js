import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popUp", "tripList"]

  connect() {
    console.log("Hello World!");
  }

  popUp(event) {
    event.preventDefault()
    this.popUpTarget.classList.remove("d-none");
  }

}
