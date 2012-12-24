require 'active_record'
require 'rails'
require 'sidekiq'
require 'generators/hjq/install_generator'

module HJQ
  class HJQ
    require 'hjq/railtie' if defined?(Rails)
  end
end