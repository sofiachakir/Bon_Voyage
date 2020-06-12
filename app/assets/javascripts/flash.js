// Les alertes flash s'effacent lentement au bout de 3 secondes

$(document).on('turbolinks:load', function() {
  setTimeout(function() {
    $('.alert').fadeOut("slow");
  }, 3000);
})