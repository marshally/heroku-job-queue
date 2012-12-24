module HJQ
  # == Schema Information
  #
  # Table name: job_queues
  #
  #  id          :integer          not null, primary key
  #  job_name    :string(255)
  #  worker_name :string(255)
  #  arguments   :string(255)
  #  created_at  :datetime         not null
  #  updated_at  :datetime         not null
  #

  class JobQueue < ActiveRecord::Base
    attr_accessible :arguments, :job_name, :worker_name
  end
end