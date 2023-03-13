import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["triplist"]

  connect() {
    console.log("Hello World!");
  }

  showTrips(event) {
    event.preventDefault()
    console.log("hi there!");
    this.triplistTarget.classList.toggle("d-none");
  }

}
