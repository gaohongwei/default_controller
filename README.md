# DefaultController

This gem creates the default actions for controllers.
The actual controllers can be empty if defaut actions are acceptable.
Usually the index action will be overriden.

## Installation

Add this line to your application's Gemfile:

    gem 'default_controller'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install default_controller

## Usage

-----Sample for ApplicationController

class ApplicationController < ActionController::Base

  include DefaultController

  protect_from_forgery

  respond_to :html, :xml, :json

end

-----Sample for resource controllers

class UsersController < ApplicationController

end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
