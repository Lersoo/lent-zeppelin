require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { addAutocomplete } from './autocomplete';
addAutocomplete();
