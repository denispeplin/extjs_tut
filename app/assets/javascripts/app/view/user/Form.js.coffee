Ext.define "AM.view.user.Form",
  extend: "Ext.window.Window"
  alias: "widget.userform"
  title: "User"
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