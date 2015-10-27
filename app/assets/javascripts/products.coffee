# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "click", ".clickable-area", ->
  window.document.location = $(this).data("href")

$(document).on "mouseover", ".clickable-area", ->
  $('.clickable-area').css( 'cursor', 'pointer' )

$(document).on "mouseover", ".plants-menu", ->
  $('.plants-menu').css( 'cursor', 'pointer' )



$(document).on "click", "#AddToCart", ->
  if $(this).data("url")
    alert("You must be logged in!")

