require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { placesAutocomplete } from './autocomplete';
searchAlgoliaPlaces();
