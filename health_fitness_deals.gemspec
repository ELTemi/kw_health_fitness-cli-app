
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
  spec.homepage      = "https://github.com/gems/kw_health_fitness-cli-app.git"
  spec.license       = "MIT"
  spec.executables   << 'health_fitness_deals'
  spec.files            = ["lib/health_fitness_deals.rb", "lib/health_fitness_deals/cli.rb", "lib/health_fitness_deals/scraper.rb", "lib/health_fitness_deals/deal.rb", "lib/health_fitness_deals/version.rb"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
