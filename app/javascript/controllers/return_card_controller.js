import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['cards'];

  return(event) {
    this.cardsTarget.classList.remove("cards");
    if (this.cardsTarget.id == 1) {
      this.cardsTarget.classList.add("black-card");
    } else if (this.cardsTarget.id < 9) {
      this.cardsTarget.classList.add("red-card");
      this.cardsTarget.innerText = "";
    } else if (this.cardsTarget.id < 17) {
      this.cardsTarget.classList.add("blue-card");
      this.cardsTarget.innerText = "";
    } else {
      this.cardsTarget.classList.add("grey-card");
      this.cardsTarget.innerText = "";
    };
  }
}
