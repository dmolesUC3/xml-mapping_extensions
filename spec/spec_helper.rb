# ------------------------------------------------------------
# SimpleCov/CodeClimate setup

if ENV['COVERAGE']
  if ENV['CODECLIMATE_REPO_TOKEN']
    require 'codeclimate-test-reporter'
    CodeClimate::TestReporter.start
  end

  require 'simplecov'
  require 'simplecov-console'

  SimpleCov.minimum_coverage 100
  SimpleCov.start do
    add_filter '/spec/'
    SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
        SimpleCov::Formatter::HTMLFormatter,
        SimpleCov::Formatter::Console,
    ]
  end
end

# ------------------------------------------------------------
# Rspec configuration

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.mock_with :rspec
end

require 'rspec_custom_matchers'

# ------------------------------------------------------------
# XML::MappingExtensions

require 'xml/mapping_extensions'
