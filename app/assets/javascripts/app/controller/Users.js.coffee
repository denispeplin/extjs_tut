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
      "userlist button[action=add]":
        click: @addUser
      "userlist button[action=delete]":
        click: @deleteUser

      "useredit button[action=save]":
        click: @updateUser

  editUser: (grid, record) ->
    view = Ext.widget("useredit")
    view.down("form").loadRecord record

  updateUser: (button) ->
    win = button.up("window")
    form = win.down("form")
    record = form.getRecord()
    values = form.getValues()
    record.set values
    win.close()
    # synchronize the store after editing the record
    @getUsersStore().sync()

  addUser: (button) ->
    alert("Add pressed")

  deleteUser: (button) ->
    alert("Delete pressed")