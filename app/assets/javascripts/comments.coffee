# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@validateCommentCommenter = ->
	title = document.getElementById('comment_commenter').value

	if title == ""
		alert "Commenter can't be blank."
		
@validateCommentBody = ->
	text = document.getElementById('comment_body').value
	
	if text == ""
		alert "Comment body can't be blank."