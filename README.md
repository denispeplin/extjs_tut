## Installation

Download ExtJS source from http://www.sencha.com/products/extjs/

Unpack and link extjs source to `public` directory, for example:

```bash
ln -s /somepath/ext-4.1.1a public/extjs
```

Install gems, migrate and seed database:

```bash
bundle
rake db:migrate
rake db:seed
```

## Run application

```bash
rails s
```

Following links are available:

* Netzke version is on the root page, just visit [http://localhost:3000](http://localhost:3000).
* ExtJS version is on the `/hello/index` page, visit [http://localhost:3000/hello/index](http://localhost:3000/hello/index)

## Documentation links

* [Getting Started](http://docs.sencha.com/ext-js/4-1/#!/guide/getting_started)
* [MVC Architecture](http://docs.sencha.com/ext-js/4-1/#!/guide/application_architecture)
* [Ext Direct and Grid Part 2](http://docs.sencha.com/ext-js/4-1/#!/guide/direct_grid_pt2) (buttons implementation)

## Other links

 * [ExtJs4 MVC example](https://github.com/lucassus/extjs4-account-manager)

## TODO

* Switch to [Netzke](http://netzke.org/)
