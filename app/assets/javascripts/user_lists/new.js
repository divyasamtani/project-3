$('.user_lists.new').ready(function(){
	// Limit input fields for restaurants, user can add.
	const MAXINPUTFIELD = 10;

	// Tracks user input field.
	var countInputField = 1;

	var wrapper = $('.input-wrapper-field');

	// Add new restaurant form.
	$('#addInputButton').on('click', function(e) {
		e.preventDefault();

		if (countInputField < MAXINPUTFIELD) {
			wrapper.append('<div class="row">'+
												'<div class="input-field col s12">' +
													'<div class="col s11">' +
														'<input id="restaurantInput'+ countInputField+1 +'" name="restaurant[]" placeholder="Restaurant" type="text" class="validate">' +
													'</div>' +
													'<div class="col s1">' +
														'<a class="removeInputButton btn-floating btn waves-effect waves-light red">'+
															'<i class="fa fa-minus"></i>' +	
														'</a>' +
													'</div>' +
												'</div>' +
											'</div>');
			countInputField++;
		}
	});

	// Remove functionality
	$('body').on('click', 'a.removeInputButton', function(e) {
		e.preventDefault();
		$(this).parent('div').parent('div').parent('div').remove();
		countInputField--;
	});

	$('#submitList').on('click', function(e) {
		// e.preventDefault();

		var getListParams = {
			list: {
				title: $('#title').val(),
				description: $('#description').val()
			}
		};

		var getRestaurantParams = {

		};

		$.ajax({
			method: 'POST',
			url: 'http://localhost:3000/api/user/lists',
			data: getParams
		}).success(function(data) {
			window.location.replace("http://localhost:3000/");
		});

		// $.ajax({
		// 	method: 'POST',
		// 	url: 'http://localhost:3000/api/restaurant',
		// 	data
		// });
	});
});
