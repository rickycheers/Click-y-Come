# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->

	$('.order_menu').each ->
		$(this).click ->
			menu_el   = $(this).parents '.menu'
			menu_name = menu_el.find('.name').text()
			user_name = "#{$('#user_fname').val()} #{$('#user_mname').val()}"
			structure = 
			"""
			<div id="modal" class="reveal-modal">
				<h3>#{user_name} confirma tu orden</h3>
				<p class="lead">
					#{menu_name}
					<form id="order" method="post" action="" class="nice">
						<input type="text" name="order[quantity]" value="1" class="input-text"/>
						<input type="hidden" name="" value="" />
						<input type="submit" value="¡Listo!" class="button" />
					</form>
				</p>
				<a class="close-reveal-modal">&#215;</a>
			</div>
			"""
			$('body').prepend structure
			$('#modal').reveal()