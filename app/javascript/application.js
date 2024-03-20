import "@hotwired/turbo-rails"
import * as bootstrap from "bootstrap/dist/js/bootstrap"

document.addEventListener("DOMContentLoaded", function() {
    var buttons = document.querySelectorAll(".btn");
    buttons.forEach(function(button) {
      button.addEventListener("click", function(event) {
        event.preventDefault();
      });
    });
  });