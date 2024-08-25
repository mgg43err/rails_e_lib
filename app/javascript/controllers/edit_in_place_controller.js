import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "input"]

  connect() {
    this.inputTarget.style.display = "none"
  }

  edit() {
    this.contentTarget.style.display = "none"
    this.inputTarget.style.display = ""
    this.inputTarget.focus()
  }

  save() {
    const value = this.inputTarget.value
    this.contentTarget.textContent = value
    this.contentTarget.style.display = ""
    this.inputTarget.style.display = "none"

    // Here you would typically send an AJAX request to update the server
    console.log("Saving value:", value)
  }
}
