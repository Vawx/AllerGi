ENV['RACK_ENV'] = 'test'

require 'database_cleaner'
require 'sinatra/activerecord'
require 'rspec'
require 'pg'
require 'allergen'
require 'keyword'

RSpec.configure do |config|
  config.after(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
  end
end
