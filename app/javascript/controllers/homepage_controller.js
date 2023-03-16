import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="homepage"
export default class extends Controller {
  static targets = ["bottom", "splashScreen"]

  connect() {
    // console.log(this.splashScreenTarget);
    // console.log(this.bottomTarget);

    // const delay = 4000;

    // const scroll = () => {
    //   const scrollIntoViewOptions = { behavior: 'smooth'}
    //   this.bottomTarget.scrollIntoView(scrollIntoViewOptions)
    //   this.splashScreenTarget.style.display = "none";
    // }

    // setTimeout(scroll, delay);
  }
}
