# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

validateArticle = (title, text) ->
	errorMessage = ""
	goodToSubmit = true
	if title == ""
		goodToSubmit = false;
		errorMessage += "Title can't be blank.\n"
	if text == ""
		goodToSubmit = false;
		errorMessage += "Content can't be blank.\n"
	
	if goodToSubmit is true
		return true
	else
		alert errorMessage
		return false