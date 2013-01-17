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
    @control userlist:
      itemdblclick: @editUser

  editUser: (grid, record) ->
    view = Ext.widget("useredit")
    view.down("form").loadRecord record