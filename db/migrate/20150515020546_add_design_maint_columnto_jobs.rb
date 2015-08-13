class AddDesignMaintColumntoJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :design_maint, :boolean, default: false
  end
end
