require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Oshaka
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.application_name = "Oshaka"
    config.autoload_paths += %W(#{config.root}/app/models/connections)
    config.autoload_paths += Dir["#{config.root}/lib/"]
    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app", "assets", "config"  )
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
