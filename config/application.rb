require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EzWeb
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    # Rubyプロセス(JST)と同じにする
    config.active_record.default_timezone = :local
    config.autoload_lib(ignore: %w(assets tasks))
    config.generators do |g|
      g.test_framework :rspec,
      view_specs: false,
      helper_specs: false,
      routing_specs: false,
      model_specs: false
    end
  end
end
