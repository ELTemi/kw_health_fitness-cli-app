
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "health_fitness_deals/version"

Gem::Specification.new do |spec|
  spec.name          = "health_fitness_deals"
  spec.version       = HealthFitnessDeals::VERSION
  spec.authors       = ["'Temitope Akintoye'"]
  spec.email         = ["'ruth_olukunle@yahoo.com'"]

  spec.summary       = %q{This cli gem app provides a list of health and fitness deals in the Kitchener-Waterloo(KW) region of Canada. The user will select a deal and a details of the deal will be provided}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/ELTemi/kw_health_fitness-cli-app.git"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end

equire_relative './lib/worlds_best_restaurants/version'

Gem::Specification.new do |s|
  s.name        = 'worlds-best-restaurants'
  s.version     = WorldsBestRestaurants::VERSION
  s.date        = '2016-01-13'
  s.summary     = "Best Restaurants in the World"
  s.description = "Provides details on the San Pellegrino Worlds 50 Best restaurants"
  s.authors     = ["Danny Dawson"]
  s.email       = 'dannyd4315@gmail.com'
  s.files       = ["lib/worlds_best_restaurants.rb", "lib/worlds_best_restaurants/cli.rb", "lib/worlds_best_restaurants/scraper.rb", "lib/worlds_best_restaurants/restaurant.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/worlds-best-restaurants'
  s.license     = 'MIT'
  s.executables << 'worlds-best-restaurants'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
