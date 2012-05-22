# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$('.order_menu').each ->
		$(this).click openConfirmationDialog
		true
	true

openConfirmationDialog = () ->
	button       = $(this)
	menu_el      = button.parents '.menu'
	modal_config = 
		menu_name: menu_el.find('.name').text()
		user_name: "#{$('#user_fname').val()} #{$('#user_mname').val()}"
		menu_id  : button.attr('id').replace('order_menu_', '')

	modal_html = createModalHTML modal_config
		
	$('body').prepend modal_html
	$('#modal').reveal()
	listenFormSubmit '#order'
	true

createModalHTML = (config) ->
	modal_html = 
	"""
	<div id="modal" class="reveal-modal">
		<h3>#{config.user_name} confirma tu orden</h3>
		<p class="lead">
			#{config.menu_name}
			<form id="order" method="post" action="" class="nice">
				<input type="text" name="order[quantity]" value="1" class="input-text"/>
				<input type="hidden" name="order[menu_id]" value="#{config.menu_id}" />
				<input type="submit" value="¡Listo!" class="button" />
			</form>
		</p>
		<a class="close-reveal-modal">&#215;</a>
	</div>
	"""
listenFormSubmit = (form_id) ->
	$(form_id).one 'submit', processForm
	true
	
processForm = (event) ->
	event.preventDefault()
	modal = $ '#modal'
	modal.html '<h2>¡Hemos recibido tu orden! :)</h2>'
	setTimeout hideModal, 1000
	true

hideModal = () ->
	#Temporary until foundation guys implement a method to close the modal window
	$('.reveal-modal-bg').trigger 'click'
	setTimeout -> 
		$('#modal').remove()
	, 300
	true

