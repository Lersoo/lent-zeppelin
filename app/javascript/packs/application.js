require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

// add bootstrap
import "bootstrap";

//search bar auto complete
import { addAutocomplete } from './autocomplete';
addAutocomplete();

//map box js import
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();