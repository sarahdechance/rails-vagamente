import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile-form"
export default class extends Controller {
  static targets = ["question"]
  static values = { questionIndex: Number }

  connect() {
  }

  next(event) {
    console.log("Je suis là")
    // 1. Selectionner toutes tes targets Question
    // 2. Sur chaque question, j'ajoute le d-none
    event.currentTarget.setAttribute("checked", true);
    // setTimeout(() => {

    // }, 0.7);

    this.questionTargets.forEach((target) => {
      target.classList.add("d-none");
    })

    // 3. J'ajoute la class "checked" à l'élément
    // 4. Je trouve la question target qui contient l'element qui vient de changer
    this.questionIndexValue += 1 ;
    const elemt = this.questionTargets[this.questionIndexValue];
    // console.log(elemt)
    // 5. Je récupère la prochaine target question de mon array de questions
    // 6. je lui enlève le d-none
    elemt.classList.remove("d-none");
  }
}
