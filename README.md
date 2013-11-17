# Rails Admin Place Field

rails_admin_place_field is a gem that works with [rails_admin](https://github.com/sferik/rails_admin) to provide an easy to use Google Maps interface for displaying and setting geographic coordinates in a model and then performing lookups for associations to a nearby Google Place or Foursquare Venue

Where a latitude and longitude is set on the model, it is indicated by a marker shown on a Google map centered at the marker. The administrator can change the value of these fields by clicking on the desired new location on the map.


## Usage

rails_admin_place_field expects that the model will have two attributes, one for latitude and one for longitude of the point represented. To enable rails_admin_place_field, add the gem to your `Gemfile`. I recommend using the git repo until I release a 1.0.0 version of the gem, however, you can add the [RubyGems](https://rubygems.org/gems/rails_admin_place_field) version if you feel so inclined.

```ruby
gem "rails_admin_place_field", :git => "git://github.com/thinkclay/rails_admin_place_field.git"
```

Then, add in your `config/initializers/rails_admin.rb` initializer:

```ruby
RailsAdmin.config do |config|
  config.model Place do
    edit do
      label "Geo and Place Info"
      field :latitude, :place
      field :longitude, :hidden
    end
  end
end
```

**Note**: The field which is set as a :place field must be the latitude field, not the longitude.


## Configuration

For different configurations, rails_admin_place_field can be configured with the following:

- `longitude_field` - the name of the longitude field that forms the the co-ordinate with the latitude field specified. Defaults to "longitude"
- `google_api_key` - if you use a Google Maps API Key, it can be specified here, otherwise the maps will do limited lookups without a key
- `foursquare_api_key` - this api will be disabled until a valid key is provided
- `places_api_key` - this api will be disabled until a valid key is provided
- `default_latitude` - the latitude to center the map shown on if the latitude field is blank. Defaults to 51.5, the latitude of London, UK.
- `default_longitude` - the longitude used if the longitude field is blank. Defaults to -0.126, the longitude of London, UK.

A more complicated configuration example:

```ruby
RailsAdmin.config do |config|
  config.model Place do
    edit do
      field :latitude, :place do
        label "Geo and Place Info"
        longitude_field :longitude
        foursquare_field :foursquare
        gplace_field :gplace
        google_api_key "a1b2c3d4e5f6deadbeef"
        places_api_key "a1b2c3d4e5f6deadbeef"
        foursquare_api_key "a1b2c3d4e5f6deadbeef"
        default_latitude -34.0
        default_longitude 151.0
      end
    end
  end
end
```

-------
rails_admin_place_field is licensed under the [MIT license](http://opensource.org/licenses/MIT).

Kudos and credit to [beyondthestory](https://github.com/beyondthestory/rails_admin_map_field) for the map_field which gave me the starting point to learn how to make this
