# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
Ext.application
  requires: ['Ext.container.Viewport']
  name: "HelloExt"
  appFolder: "/assets/app"
  launch: ->
    Ext.create "Ext.container.Viewport",
      layout: "fit"
      items: [
        xtype: "panel"
        title: "Hello Ext"
        html: "Hello! Welcome to Ext JS."
      ]