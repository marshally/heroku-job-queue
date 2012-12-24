require 'heroku-api'

namespace :hjq
  desc "Process Queued Jobs"
  task :process_queued_jobs => :environment do
    @jobs = JobQueue.all
    if @jobs.count == 0
      puts "No jobs, canceling rake tasks"
      next  #get out of the task
    end

    heroku = Heroku::API.new(:api_key => ENV['API_KEY'])
    heroku.post_ps_scale(ENV['APP_NAME'], "worker", 1)
    puts "Scaling processes up"

    @jobs.each do |job|
      puts "Processing job #{job.job_name}"
      split_args = job.arguments.split(",")
      eval(job.worker_name).perform_async(split_args[0], eval(split_args[1]))
      job.destroy
    end

    queue = Sidekiq::Queue.new("default")
    #sleep until all the jobs are done
    loop do
      break if queue.size == 0
      sleep 1
    end

    puts "Scaling processes down"

    heroku = Heroku::API.new(:api_key => ENV['API_KEY'])
    heroku.post_ps_scale(ENV['APP_NAME'], "worker", 0)
  end
end
