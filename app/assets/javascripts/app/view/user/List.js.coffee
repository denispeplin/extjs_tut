Ext.define "AM.view.user.List",
  extend: "Ext.grid.Panel"
  alias: "widget.userlist"
  title: "All Users"
  store: 'Users'

  bbar: [
    iconCls: "add"
    text: "Add"
    action: "add"
  ,
    iconCls: "delete"
    text: "Delete"
    action: "delete"
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