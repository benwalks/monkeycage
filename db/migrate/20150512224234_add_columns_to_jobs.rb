class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :description, :string
    add_column :jobs, :percentage_complete, :integer
  end
end
