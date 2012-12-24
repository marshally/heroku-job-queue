require 'sidekiq'
require 'active_record'
require 'rails'

module HerokuJobQueue
  class HerokuJobQueue
    require 'heroku-job-queue/railtie' if defined?(Rails)
  end
end