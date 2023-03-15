import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="research-form"
export default class extends Controller {
  static targets = ["intro", "body", "question"]
  static values = { questionIndex: Number }


  connect() {
    const delay = 2500;

    const scroll = (event) => {
      const scrollIntoViewOptions = { behavior: 'smooth'}
      this.bodyTarget.classList.remove("d-none")
      this.introTarget.classList.add("d-none")
      this.bodyTarget.scrollIntoView(scrollIntoViewOptions)
    }

    setTimeout(scroll, delay);
  }

  next(event) {
    console.log(event.currentTarget)
    // setTimeout(() => {

    // }, 0.7);

    this.questionTargets.forEach((target) => {
      target.classList.add("d-none");
    })

    // 3. J'ajoute la class "checked" à l'élément
    // 4. Je trouve la question target qui contient l'element qui vient de changer
    this.questionIndexValue += 1 ;

    const elemt = this.questionTargets[this.questionIndexValue];
    console.log(elemt)
    // console.log(elemt)
    // 5. Je récupère la prochaine target question de mon array de questions
    // 6. je lui enlève le d-none
    elemt.classList.remove("d-none");
  }
}
