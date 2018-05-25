The HealthFitnessDeals CLI app will be a command line application that will enable the user to see a list of deals.
First, they will be welcomed to the app and then asked to select the deal(based on a prompt) they are most interested in from a list of options.
Once they choose a number, they will see the details of that deal including the price, title and subtitles, location and description. If they wanted to exit, they can type in exit to go back to the beginning. They should also be able to type in list at anytime to see a list of available deals. the user will not be able to create or edit their books.
For the architecture, we'll have a Deal class to represent each deal, a HealthFitnessDealscraper class to scrape the site and create the deal and a CLI to interact with the user.


As a first version, the user will see a list of available deals. They will then be asked to enter a prompt.
There will also be a HealthFitnessDeal class (this will represent each deal instance) that will have the following attributes
 - A Title (@title)
 - A subtitle (@sub_title)
 - Original Price @org_price
 - Discounted Price @disc_price
 - location @location
 - Description #description
