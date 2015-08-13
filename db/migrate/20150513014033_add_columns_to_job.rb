class AddColumnsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :scope_job, :boolean
    add_column :jobs, :survey_job, :boolean
    add_column :jobs, :risk_assess, :boolean
    add_column :jobs, :init_smes, :boolean
    add_column :jobs, :lv_drop_catan, :boolean
    add_column :jobs, :design_calcs, :boolean
    add_column :jobs, :prelim_dwg, :boolean
    add_column :jobs, :check_internals, :boolean
    add_column :jobs, :peer_check, :boolean
    add_column :jobs, :outage_manage, :boolean
    add_column :jobs, :obtain_quotes, :boolean
    add_column :jobs, :estimate, :boolean
    add_column :jobs, :approved_dwg, :boolean
    add_column :jobs, :admin_emails, :boolean
    add_column :jobs, :revalidation, :boolean
    add_column :jobs, :admin_received, :boolean
    add_column :jobs, :peg_job, :boolean
    add_column :jobs, :notes, :text
  end
end
