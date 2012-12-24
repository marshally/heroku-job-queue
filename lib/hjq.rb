require 'sidekiq'
require 'active_record'
require 'rails'

module HJQ
  class HJQ
    require 'hjq/railtie' if defined?(Rails)
  end
end