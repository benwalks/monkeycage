class AddWorkOrderToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :work_order, :integer
  end
end
