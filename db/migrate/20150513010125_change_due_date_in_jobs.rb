class ChangeDueDateInJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :due_date
    add_column :jobs, :due_date, :datetime
  end
end
