class CreateJobQueues < ActiveRecord::Migration
  def change
    create_table :job_queues do |t|
      t.string :job_name
      t.string :worker_name
      t.string :arguments

      t.timestamps
    end
  end
end