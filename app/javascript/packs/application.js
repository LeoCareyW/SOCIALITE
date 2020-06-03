// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import '../plugins/carousel';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initAutoRefresh } from '../plugins/init_autorefresh';
import { messagesPopup } from '../plugins/messages_popup';
import { messagesPopup2 } from '../plugins/add_to_chat';
import 'slick-carousel';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import { initSlick } from '../plugins/init_slick';
import { addFriend } from '../plugins/add_friend';
import { notification } from '../plugins/notifications';
import { noScroll } from '../plugins/no-scroll';


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {
  initAutocomplete();
  initSlick();
  initMapbox();
  messagesPopup();
  messagesPopup2();
  notification();
  noScroll();
  // initAutoRefresh();
  // addFriend();
});
