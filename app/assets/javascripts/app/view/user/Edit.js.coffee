Ext.define "AM.view.user.Edit",
  extend: "Ext.window.Window"
  alias: "widget.useredit"
  title: "Edit User"
  layout: "fit"
  autoShow: true
  initComponent: ->
    @items = [
      xtype: "form"
      items: [
        xtype: "textfield"
        name: "name"
        fieldLabel: "Name"
      ,
        xtype: "textfield"
        name: "email"
        fieldLabel: "Email"
      ]
    ]
    @buttons = [
      text: "Save"
      action: "save"
    ,
      text: "Cancel"
      scope: this
      handler: @close
    ]
    @callParent arguments