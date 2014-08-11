# acts_as_view_countable

Lightweight implementation of resource's view counter

## Installation

Add this line to your application's Gemfile:

    gem 'acts_as_view_countable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_view_countable

## Usage

```ruby
# Model
class Route < ActiveRecord::Base
  acts_as_view_countable column_name: :view_count
end

# Controller
class RoutesController < ApplicationController
  def show
    @route = Route.find(params[:id])
    @route.inc_view_count(1)
    # or @route.inc_view_count!(1) to save it in DB without calling ActiveRecord callbacks
  end
end

# View
@route.view_count
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/acts_as_view_countable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
