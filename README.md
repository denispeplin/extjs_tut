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

## Documentation links

* [Getting Started](http://docs.sencha.com/ext-js/4-1/#!/guide/getting_started)
* [MVC Architecture](http://docs.sencha.com/ext-js/4-1/#!/guide/application_architecture)
