var modalFun = function() {
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementsByClassName('modal-trigger')[0];

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName('close')[0];

	// When user clicks on the button, open the modal
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When user clicks anywhere outside of modal, close modal
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

};

$(document).ready(modalFun);
$(document).on('page:load', modalFun);
$(document).on('turbolinks:load', modalFun);
