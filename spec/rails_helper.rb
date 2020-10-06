ENV['RAILS_ENV'] ||= 'test'

# This file is copied to spec/ when you run 'rails generate rspec:install'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
%w(staging production).each do |environment|
  if Rails.env.send("#{environment}?")
    abort("The Rails environment is running in #{environment} mode!")
  end
end

require 'spec_helper'
require 'rspec/rails'
require 'devise'
require 'pundit/rspec'

ActiveRecord::Migration.maintain_test_schema!

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
Dir[Rails.root.join('spec/**/shared/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

