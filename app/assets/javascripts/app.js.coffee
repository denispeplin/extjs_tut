# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
Ext.application
  requires: ['Ext.container.Viewport']
  name: "AM"
  appFolder: "/assets/app"
  controllers: [
    'Users'
  ]
  launch: ->
    try
      csrfToken = Ext.select("meta[name='csrf-token']").elements[0].getAttribute("content")
      Ext.Ajax.on "beforerequest", (o, r) ->
        r.headers = Ext.apply(
          Accept: "application/json"
          "X-CSRF-Token": csrfToken
        , r.headers or {})
    Ext.create "Ext.container.Viewport",
      layout: "fit"
      items: [
        xtype: "userlist"
        title: "Users"
        html: "List of users will go here"
      ]