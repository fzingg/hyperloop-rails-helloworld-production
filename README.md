## Hyperloop with Rails 5.0.2 HelloWorld sample app

![Screen](https://github.com/ruby-hyperloop/hyperloop-js-helloworld/blob/master/hyperloophelloworldscreenshot.png)

Hyperloop works great with new or existing rails apps, so it's pain free to introduce it to your application.

Hyperloop has been tested with the most recent Ruby On Rails verions:<br> Rails (4.2), Rails (5.0) and the last Rails (5.1.0.rc1).


### Setup

In your `Gemfile`

```ruby
gem 'hyperloop', git: 'https://github.com/ruby-hyperloop/hyperloop.git'
```

then

```ruby
bundle install
```

Once the Hyperloop Gem and all its dependencies have been installed, it's time to run the hyperloop install generator.

```ruby
rails g hyperloop:install
```

The generator creates the hyperloop structure inside the `/app` directory :

```
/app/hyperloop/
/app/hyperloop/components
/app/hyperloop/models
/app/hyperloop/operations
/app/hyperloop/stores
```

And updates your `app/assets/javascripts/application.js` file adding this line:

```
//= require hyperloop-loader
```

Two more configurations files are added and you can know more about in the next <a href="#advanced-configuration">Advanced configuration</a> section.


### Simple HelloWorld


You can now test it by creating a very simple Component by running the hyperloop generator :

```ruby
rails g hyper:component Helloworld
```

You can view the new Component created in `/app/hyperloop/components/`

Then you create a `home_controller.rb` file:

```
#app/controllers/home_controller.rb

class HomeController < ApplicationController
  def helloworld
    render_component
  end
end
```

Don't forget to modify your `routes.rb`:

```ruby
#get 'home/helloworld'
root 'home#helloworld'
```

Start your Rails server and browse `http://localhost:3000`.<br>
You should see `Hello world` displayed by the Component.


### Advanced configuration

config.hyperloop.auto_config = false
