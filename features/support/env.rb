# Generated by cucumber-sinatra. (2014-07-21 15:59:40 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/battleships.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BattleShipsGroup

class BattleShipsGroupWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BattleShipsGroupWorld.new
end
