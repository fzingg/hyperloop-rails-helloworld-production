require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HyperloopRailsHelloworld
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.hyperloop.auto_config = false

    # config.eager_load_paths += %W(#{config.root}/app/hyperloop/models)
    # config.autoload_paths += %W(#{config.root}/app/hyperloop/models)
    # # config.eager_load_paths += %W(#{config.root}/app/hyperloop/stores)
    # # config.autoload_paths += %W(#{config.root}/app/hyperloop/stores)
    # config.eager_load_paths += %W(#{config.root}/app/hyperloop/operations)
    # config.autoload_paths += %W(#{config.root}/app/hyperloop/operations)

    # config.assets.paths.unshift ::Rails.root.join('app', 'hyperloop').to_s
  end
end
