require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { addAutocomplete } from './autocomplete';
addAutocomplete();
import { initUpdateButtonOnScroll } from './sticky-button-color';
initUpdateButtonOnScroll();
