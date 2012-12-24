require 'active_record'
require 'rails'
require 'sidekiq'

module HJQ
  class HJQ
    require 'hjq/railtie' if defined?(Rails)
  end
end