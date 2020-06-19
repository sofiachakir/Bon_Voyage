// Fonction de sortable.js, permet de déplacer les cards

$(document).on('turbolinks:load', function() {
	$(function() {
	  $('.thumbnail-sortable').sortable({
	      placeholderClass: 'card mt-4 drag'
	  });
	});
});