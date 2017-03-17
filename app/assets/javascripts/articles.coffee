# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@validateArticleTitle = ->
	title = document.getElementById('article_title').value

	if title == ""
		alert "Title can't be blank."
		
@validateArticleText = ->
	text = document.getElementById('article_text').value
	
	if text == ""
		alert "Content can't be blank."