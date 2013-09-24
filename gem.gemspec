# coding: UTF-8

Gem::Specification.new do |s|
  s.add_development_dependency('devise', '>= 1.1')
  s.add_development_dependency('rspec-rails', '>= 2.4')
  s.add_development_dependency('yard', '>= 0.6')
  s.add_development_dependency('sqlite3')

  # If you add a runtime dependency, please maintain alphabetical order
  s.add_runtime_dependency('rails', '>= 3.0.0')

  # TODO: uncomment next line when rails_admin gem will be released
  s.add_runtime_dependency('rails_admin', '> 0.0.1')


  s.name              = "rails_admin_place_field"
  s.version           = "0.0.1"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Clay McIlrath"]
  s.email             = ["clay.mcilrath@gmail.com"]
  s.homepage          = "http://github.com/thinkclay/"
  s.summary           = "Adds a place field to rails_admin using the Google Places and Foursquare API's "
  s.description       = "A place field for RailsAdmin that can be used to retrieve a google place or foursquare venue"
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"

  s.files             = `git ls-files`.split("\n")
  s.require_path      = 'lib'
end
