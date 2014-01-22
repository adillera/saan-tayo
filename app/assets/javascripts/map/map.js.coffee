# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@GMap = ->
  initialize: ->
    mapOptions =
      center: new google.maps.LatLng(-34.397, 150.644)
      zoom: 8

    map = new google.maps.Map($('#map-container')[0], mapOptions)

newMap = new GMap
newMap.initialize()
