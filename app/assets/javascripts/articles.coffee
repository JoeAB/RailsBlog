# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



@validateArticle = ->
	title = document.getElementById('article_title').value
	text = document.getElementById('article_text').value
	alertMessage = ""
	needToAlert = false
	
	if title == ""
		alertMessage += "Title can't be blank.\n"
		needToAlert = true
	if text == ""
		alertMessage += "Text body can't be blank."
		needToAlert = true
	if needToAlert
		alert alertMessage