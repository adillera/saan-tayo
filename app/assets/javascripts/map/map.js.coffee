# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@GMap = ->
  initialize: ->
    _.bindAll(@, 'loadMap', 'dropUserPin')

    @nav = navigator.geolocation

    if @nav
      @nav.getCurrentPosition(@loadMap)

    else
      alert('Navigator not supported by your browser... Try Chrome maybe..?')


  loadMap: (position) ->
    @position = position
    longitude = @position.coords.longitude
    latitude  = @position.coords.latitude

    mapOptions =
      center: new google.maps.LatLng(latitude, longitude)
      zoom: 18
      zoomControl: true
      mapTypeControl: false

    @map = new google.maps.Map($('#map-container')[0], mapOptions)

    @dropUserPin()


  dropUserPin: ->

newMap = new GMap
newMap.initialize()
