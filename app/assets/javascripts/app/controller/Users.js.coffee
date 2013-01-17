Ext.define "AM.controller.Users",
  extend: "Ext.app.Controller"
  views: [
    'user.List'
  ]
  init: ->
    @control userlist:
      itemdblclick: @editUser


  editUser: (grid, record) ->
    console.log "Double clicked on " + record.get("name")