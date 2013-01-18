Ext.define "AM.view.user.List",
  extend: "Ext.grid.Panel"
  alias: "widget.userlist"
  title: "All Users"
  store: 'Users'

  dockedItems: [
    xtype: "toolbar"
    dock: "bottom"

    items: [
      iconCls: "add"
      text: "Add"
      handler: ->
        alert "Add pressed"
    ,
      iconCls: "delete"
      text: "Delete"
      handler: ->
        alert "Delete pressed"
    ]
  ]
  initComponent: ->
    @columns = [
      header: "Name"
      dataIndex: "name"
      flex: 1
    ,
      header: "Email"
      dataIndex: "email"
      flex: 1
    ]
    @callParent arguments