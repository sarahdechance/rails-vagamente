import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ['signIn', 'register', 'signInBtn', 'registerBtn']

  signIn(event) {
    this.registerTarget.classList.add('d-none')
    this.signInTarget.classList.remove('d-none')
    this.signInBtnTarget.classList.add('active')
    this.registerBtnTarget.classList.remove('active')
  }

  register(event) {
    this.signInTarget.classList.add('d-none')
    this.registerTarget.classList.remove('d-none')
    this.signInBtnTarget.classList.remove('active')
    this.registerBtnTarget.classList.add('active')
  }
}
