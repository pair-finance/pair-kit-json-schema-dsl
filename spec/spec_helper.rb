# frozen_string_literal: true

require 'simplecov'

SimpleCov.start do
  add_filter 'spec/'
  add_filter '.github/'
  add_filter 'lib/pair_kit/json_factory/version'
end

if ENV['CI'] == 'true'
  require 'simplecov-cobertura'
  SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter
end

FIXTURES_PATH = Pathname.new(File.dirname(__FILE__)).join('fixtures')

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each { |f| require f }

require 'pair_kit/json_schema/dsl'

require 'pry-byebug'
require 'pry-alias'

