#Demo App from SpreeConf 2012 NYC

Slides are available http://speakerdeck.com/u/cmar/p/the-3-ps-preferences-payments-and-promotions

This Spree store is a demonstration of 2 techniques
* Adding a General Preference with editing inside the admin section
* Creating a custom calculator for a promotion

##Installation

1. Clone the Project
2. run bundle inside the directory
3. A basic sqlite3 file is included, but you could build your own with (bundle exec rake db:bootstrap (to setup the store with test data)
4. rails s

##General Preference

1. There are 3 files added to the application for preferences
* Spree::Admin::GeneralSettingsController decorator
* Spree::AppConfiguration decorator
* overrides/big_title_override.rb (uses deface to display the big_title preference)

## Custom Calculator
1. models/spree/calculator/per_mug.rb
2. application.rb to add the custom calculator to the promotions