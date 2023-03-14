import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="research-form"
export default class extends Controller {
  static targets = ["element"]

  connect() {
    console.log("coucou")
    // setTimeout => checker avec le code de la homepage controller
  }

  next() {

  }

}
