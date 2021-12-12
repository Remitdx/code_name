import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['cards'];

  return(event) {
    this.cardsTarget.classList.add("red-card");
    this.cardsTarget.innerText = ""
  }
}
