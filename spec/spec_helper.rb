if ENV["CI"] && ENV["CODECOV_TOKEN"]
  require 'simplecov'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
  SimpleCov.start do
    %w[spec].each do |path|
      add_filter(path)
    end
  end
end

require "bundler/setup"
require "rubiderella"
require "rspec"
require 'rspec-parameterized'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
