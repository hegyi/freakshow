Freakshow
================

### Setting up developer environment
Clone the project and execute the following commands:

```sh
gem install bundler
bundle install
rake db:create
rake db:schema:load
rake db:seed
```


Run the webserver with Guard:

```sh
guard
```
