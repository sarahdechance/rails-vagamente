import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="research-form"
export default class extends Controller {
  connect() {
    console.log("coucou")
  }

}
