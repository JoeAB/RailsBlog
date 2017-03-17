# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@validateComment = ->
	commenter = document.getElementById('comment_commenter').value
	text = document.getElementById('comment_body').value
	alertMessage = ""
	needToAlert = false
	
	if commenter == ""
		alertMessage += "Commenter can't be blank.\n"
		needToAlert = true
	if text == ""
		alertMessage += "Comment body can't be blank."
		needToAlert = true
	if needToAlert
		alert alertMessage