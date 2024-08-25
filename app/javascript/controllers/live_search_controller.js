import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "list"]

  connect() {
    console.log("Live search controller connected")
  }

  search() {
    const query = this.inputTarget.value.toLowerCase()
    this.listTargets.forEach((item) => {
      const text = item.textContent.toLowerCase()
      item.style.display = text.includes(query) ? "" : "none"
    })
  }
}
