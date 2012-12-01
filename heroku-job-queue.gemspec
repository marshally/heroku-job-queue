lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'heroku-job-queue'
  s.version     = '0.0.1'
  s.date        = '2012-11-30'
  s.summary     = "Autoscaling heroku workers based of a job queue"
  s.description = "A gem that will moniter the jobs in your job queue and scale heroku workers"
  s.authors     = ["Mark Lohstroh"]
  s.email       = 'mlohstroh@gmail.com'
  s.files       = Dir.glob("{lib}/**/*")
  s.homepage    = 'http://rubygems.org/gems/heroku-job-queue'
end