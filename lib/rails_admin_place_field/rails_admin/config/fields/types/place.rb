module RailsAdmin::Config::Fields::Types
  class Place < RailsAdmin::Config::Fields::Base

    RailsAdmin::Config::Fields::Types::register(:place, self)

    def allowed_methods
      [@name, longitude_field, foursquare_field, gplace_field]
    end

    # THe name of the corresponding longitude field to match the latitude field
    # in this object.
    register_instance_option(:longitude_field) do
      :longitude
    end

    register_instance_option(:foursquare_field) do
      :foursquare
    end

    register_instance_option(:gplace_field) do
      :gplace
    end

    register_instance_option(:partial) do
      :place_select
    end

    register_instance_option(:google_api_key) do
      nil
    end

    register_instance_option(:foursquare_api_key) do
      nil
    end

    register_instance_option(:foursquare_api_secret) do
      nil
    end

    # Latitude value to display in the map if the latitude attribute is nil
    # (Otherwise the location defaults to (0,0) which is in the Gulf of Guinea
    register_instance_option(:default_latitude) do
      51.5 # Latitude of London, United Kingdom
    end

    # Longitude value to display if the longitude attribute is nil
    register_instance_option(:default_longitude) do
      -0.126 # Longitude of London, United Kingdom
    end

    # Default zoom level of the map
    register_instance_option(:default_zoom_level) do
      8
    end

    def dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{@name}_#{longitude_field}"
    end

    def latitude_dom_name
      @lat_dom_name ||= "#{bindings[:form].object_name}_#{@name}"
    end

    def longitude_dom_name
      @lon_dom_name ||= "#{bindings[:form].object_name}_#{longitude_field}"
    end

    def foursquare_dom_name
      @foursquare_dom_name ||= "#{bindings[:form].object_name}_#{foursquare_field}"
    end

    def gplace_dom_name
      @gplace_dom_name ||= "#{bindings[:form].object_name}_#{gplace_field}"
    end
  end
end
