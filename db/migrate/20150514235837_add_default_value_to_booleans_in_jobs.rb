class AddDefaultValueToBooleansInJobs < ActiveRecord::Migration
  def change
    change_column_default :jobs, :scope_job, false
    change_column_default :jobs, :survey_job, false
    change_column_default :jobs, :risk_assess, false
    change_column_default :jobs, :init_smes, false
    change_column_default :jobs, :lv_drop_catan, false
    change_column_default :jobs, :design_calcs, false
    change_column_default :jobs, :prelim_dwg, false
    change_column_default :jobs, :check_internals, false
    change_column_default :jobs, :peer_check, false
    change_column_default :jobs, :outage_manage, false
    change_column_default :jobs, :obtain_quotes, false
    change_column_default :jobs, :estimate, false
    change_column_default :jobs, :approved_dwg, false
    change_column_default :jobs, :admin_emails, false
    change_column_default :jobs, :revalidation, false
    change_column_default :jobs, :admin_received, false
    change_column_default :jobs, :peg_job, false
  end
end