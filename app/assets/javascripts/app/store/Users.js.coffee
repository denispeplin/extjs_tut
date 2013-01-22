Ext.define "AM.store.Users",
  extend: "Ext.data.Store"
  model: 'AM.model.User'
  autoLoad: true
  proxy:
    type: "rest"
    url: "/users"

    reader:
      type: "json"
      root: "users"
      successProperty: "success"