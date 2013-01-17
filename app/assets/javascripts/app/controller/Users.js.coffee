Ext.define "AM.controller.Users",
  extend: "Ext.app.Controller"
  views: [
    'user.List'
  ]
  init: ->
    @control "viewport > panel":
      render: @onPanelRendered

  onPanelRendered: ->
    console.log "The panel was rendered"