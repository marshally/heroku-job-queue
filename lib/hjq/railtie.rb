require 'hjq'
require 'rails'

module HerokuJobQueue
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'tasks/heroku-job-queue.rake'
    end
  end
end