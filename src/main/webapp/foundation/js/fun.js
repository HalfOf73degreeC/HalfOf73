$(document).ready(
		function() {
			// $('input[type="email"]').attr().focus().blur();
			$('input[type="email"]').attr('placeholder', '請輸入...').focus(
					function() {
						$(this).attr('placeholder', '');
					});
			$('input[type="email"]').attr('placeholder', '請輸入...').focus(
					function() {
						$(this).attr('placeholder', '').css('backgroundColor',
								'#ffffb0');
					}).blur(
					function() {
						$(this).css('backgroundColor', 'transparent');

						if ($(this).val() == '') {
							$(this).attr('placeholder', 'example@gmail.com')
									.css('background', '#ffcaca');
						}
					});

			$('input[type="text"]').focus(function() {
				$(this).attr('placeholder', '');
			});
			$('input[type="text"]').focus(
					function() {
						$(this).attr('placeholder', '').css('backgroundColor',
								'#ffffb0');
					}).blur(function() {
				$(this).css('backgroundColor', 'transparent');

				if ($(this).val() == '') {
					$(this).css('background', '#ffcaca');
				}
			});
		});