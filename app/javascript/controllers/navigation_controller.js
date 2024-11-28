import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigation"
export default class extends Controller {
  initialize() {
    const menu = document.querySelector('.menu-btn');
    const menuContainer = document.querySelector('nav > ul');
    const close = document.querySelector('.close-btn');

    menu.addEventListener('click', function() {
        menuContainer.classList.remove('hidden');
        close.classList.remove('hidden');
        this.classList.add('hidden');
    });

    close.addEventListener('click', function() {
        menuContainer.classList.add('hidden');
        menu.classList.remove('hidden');
        this.classList.add('hidden');
    });
  }
}
