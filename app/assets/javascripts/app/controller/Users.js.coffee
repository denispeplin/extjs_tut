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
    'user.Form'
  ]
  refs: [{
    ref: 'list',
    selector: 'userlist'
  }]
  init: ->
    @control
      "userlist":
        itemdblclick: @editUser
      "userlist button[action=add]":
        click: @addUser
      "userlist button[action=delete]":
        click: @deleteUser

      "userform button[action=save]":
        click: @updateUser

  editUser: (grid, record) ->
    view = Ext.widget("userform")
    view.down("form").loadRecord record

  updateUser: (button) ->
    win = button.up("window")
    form = win.down("form")
    values = form.getValues()
    record = form.getRecord()
    store  = @getUsersStore()
    if record
      record.set values
    else
      store.add values
    win.close()
    # synchronize the store after editing the record
    store.sync()

  addUser: (button) ->
    view = Ext.widget("userform")

  deleteUser: (button) ->
    sm = @getList().getSelectionModel()
    if sm
      store = @getUsersStore()
      store.remove sm.getSelection()
      store.sync()