import places from 'places.js';

const initCountries = () => {
  const countryInput = document.getElementById('trip_country_name');
  if (countryInput) {
     places({
    container: countryInput,
    templates: {
      suggestion: function(suggestion) {
        return '<i class="flag ' + suggestion.countryCode + '"></i> ' +
          suggestion.highlight.name;
      }
    }
  }).configure({
    type: 'country',
  });
};
};

export { initCountries };
