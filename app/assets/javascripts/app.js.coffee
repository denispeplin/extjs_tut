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
    Ext.create "Ext.container.Viewport",
      layout: "fit"
      items: [
        xtype: "panel"
        title: "Users"
        html: "List of users will go here"
      ]