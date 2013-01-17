Ext.define "AM.controller.Users",
  extend: "Ext.app.Controller"
  init: ->
    @control "viewport > panel":
      render: @onPanelRendered

  onPanelRendered: ->
    console.log "The panel was rendered"