# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require File.expand_path('../config/environment', __dir__)
# abort('DATABASE_URL environment variable is set') if ENV['DATABASE_URL']

require 'rspec/rails'

Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |file| require file }

module SystemTestHelper
  # Extend this module in spec/support/system/*.rb
  include Formulaic::Dsl
end

RSpec.configure do |config|
  config.include SystemTestHelper, type: :system
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
  # config.include Devise::Test::ControllerHelpers, type: :controller
end

ActiveRecord::Migration.maintain_test_schema!

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
