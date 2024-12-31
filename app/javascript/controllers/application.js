import "@hotwired/turbo-rails"
import "popper"
import "bootstrap"
import { Application } from "@hotwired/stimulus"

import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log('Dropdown');
const myDropdown = document.getElementById(
  'dropdownMenuButton1',
);

myDropdown.addEventListener('show.bs.dropdown', function () {
  console.log('Dropdown shown');
});
