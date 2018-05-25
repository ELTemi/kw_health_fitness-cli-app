
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

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

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
end
