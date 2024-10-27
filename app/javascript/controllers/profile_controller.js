import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {
  initialize() {
    const btn = document.querySelector('.btn-thumbnail')

    const loadFile = function(event) {
      const output = document.querySelector('.thumbnail');
      output.src = URL.createObjectURL(event.target.files[0]);
      output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
      }
    };
  
    btn.addEventListener('change', loadFile)
  }
}
