class ChangeActiveColumnNameInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :active, :completed
    change_column_default :jobs, :completed, false
  end
end
