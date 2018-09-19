require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ZenmateNewsApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # Disable unwanted generators
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework nil
    end
    # Set time zone
    config.time_zone = "Pacific Time (US & Canada)"
    # Run awesome_print when the console starts
    console do
      require "awesome_print"
      AwesomePrint.irb!
    end
  end
end
