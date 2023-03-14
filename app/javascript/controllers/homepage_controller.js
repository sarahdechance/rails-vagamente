import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="homepage"
export default class extends Controller {
  static targets = ["bottom"]

  connect() {
    console.log(this.bottomTarget);

    const delay = 2000;

    const scroll = () => {
      const scrollIntoViewOptions = { behavior: 'smooth'}
      this.bottomTarget.scrollIntoView(scrollIntoViewOptions)
    }

    setTimeout(scroll, delay);
  }
}
