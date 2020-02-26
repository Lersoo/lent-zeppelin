var places = require('places.js');

const addAutocomplete = () => {

  const inputs = document.querySelectorAll('.search')
  console.log("hello");
  console.log(inputs);
  inputs.forEach((input) => {
  var placesAutocomplete = places({
    appId: process.env.YOUR_PLACES_APP_ID,
    apiKey: process.env.YOUR_PLACES_API_KEY,
    container: input
  })
});

}

export { addAutocomplete }
