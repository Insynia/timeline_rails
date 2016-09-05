# Coverage
require 'simplecov'
require 'coveralls'

SimpleCov.minimum_coverage 90
SimpleCov.minimum_coverage_by_file 80
SimpleCov.add_filter '/spec/timeline_rails/'

SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
]

SimpleCov.at_exit do
  Dir.mkdir('coverage') unless Dir.exist?('coverage')
  SimpleCov.result.format!
end

SimpleCov.start

# Combustion
require 'combustion'
require 'rails/generators'

Combustion.initialize! :all

# Tests
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'timeline_rails'