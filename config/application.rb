require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"
require "bcrypt"
require "pry"
require "pry-byebug"
require "faker"


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Madamerouge
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Custom directories with classes and modules you want to be autoloadable.
  # config.autoload_paths += %W(#{config.root}/extras)

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named.
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Activate observers that should always be running.
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
  # config.time_zone = 'Central Time (US & Canada)'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
  # config.i18n.default_locale = :de
  config.i18n.enforce_available_locales = false

  # Configure the default encoding used in templates for Ruby 1.9.
  config.encoding = "utf-8"

  # Configure sensitive parameters which will be filtered from the log file.
  config.filter_parameters += [:password]

  # Enable escaping HTML in JSON.
  config.active_support.escape_html_entities_in_json = true

  # Use SQL instead of Active Record's schema dumper when creating the database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Enable the asset pipeline


  # Version of your assets, change this if you want to expire all your assets

    config.api_only = true
    config.action_dispatch.default_headers = {
    'Access-Control-Allow-Origin' => 'http://localhost:3000/',
    'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
  }
  end

end