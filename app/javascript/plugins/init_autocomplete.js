import places from 'places.js';

const initAutocomplete = () => {
  const citynameInput = document.querySelector('.city-name');
  if (citynameInput) {
    const citynameInputs = document.querySelectorAll('.city-name');
    citynameInputs.forEach((element) => {
      places({ container: element });
    });
  }
};

export { initAutocomplete };
