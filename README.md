# HealthFitnessDeals

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/health_fitness_deals`. To experiment with that code, run `bin/console` for an interactive prompt.

The HealthFitnessDeals CLI app is a command line application that will enable the user to see a list of deals related to health and fitness in the kitchener-waterloo area of Camada.
First, they will be welcomed to the app and then asked to select the deal(based on a prompt) they are most interested in from a list of options.
Once they choose a number, they will see the details of that deal including the title, original price, discount price and description. If they wanted to exit, they can type in exit to go back to the beginning. They should also be able to type in list at anytime to see a list of available deals. the user will not be able to create or edit the deals.
For the architecture, we'll have a Deal class to represent each deal, a Dealscraper class to scrape the site and create the deal and a DealCLI to interact with the user.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'health_fitness_deals'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install health_fitness_deals

## Usage

You will be welcomed to the app and then asked to select the deal(based on a prompt) they are most interested in from a list of options.
Once they choose a number, they will see the details of that deal including the title, original price, discount price and description. If they wanted to exit, they can type in exit to go back to the beginning. They should also be able to type in list at anytime to see a list of available deals. the user will not be able to create or edit the deals.
For the architecture, we'll have a Deal class to represent each deal, a Dealscraper class to scrape the site and create the deal and a DealCLI to interact with the user.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'ELTemi'/health_fitness_deals. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HealthFitnessDeals project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'ELTemi'/health_fitness_deals/blob/master/CODE_OF_CONDUCT.md).
