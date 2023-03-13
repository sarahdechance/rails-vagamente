import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tripList"]

  connect() {
    console.log("Hello World!");
  }

  showTrips(event) {
    event.preventDefault()
    console.log("hi there!");
    this.tripListTarget.classList.toggle("d-none");
  }

}
