# Generated by cucumber-sinatra. (2013-08-11 17:12:24 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/html.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = PassGen

class PassGenWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  PassGenWorld.new
end
