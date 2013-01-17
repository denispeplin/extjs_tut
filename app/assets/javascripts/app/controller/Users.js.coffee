Ext.define "AM.controller.Users",
  extend: "Ext.app.Controller"
  stores: [
    'Users'
  ]
  models: [
    'User'
  ]
  views: [
    'user.List',
    'user.Edit'
  ]
  init: ->
    @control
      "userlist":
        itemdblclick: @editUser

      "useredit button[action=save]":
        click: @updateUser

  editUser: (grid, record) ->
    view = Ext.widget("useredit")
    view.down("form").loadRecord record

  updateUser: (button) ->
    console.log "clicked the Save button"