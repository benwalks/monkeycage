class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :jobs, :name, :work_request
    rename_column :jobs, :estimate, :estimate_number
  end
end
