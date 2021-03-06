class Job < ActiveRecord::Base
  belongs_to :user
  validates :work_request, presence: true, length: { minimum: 4, maximum: 16 }

  scope :completed, -> { where completed: 2 }
  scope :active, -> { where completed: [0, 1] }

  def days_until_due
    ((due_date - Time.zone.now) / 1.day).to_f
  end

  def last_note
    return notes.lines.last if notes
    'No notes yet'
  end

  def next_task
    job_tasks =  [scope_job, survey_job, design_maint, init_smes, lv_drop_catan,
                  design_calcs, prelim_dwg, check_internals, peer_check,
                  outage_manage, admin_emails, risk_assess, obtain_quotes,
                  estimate, approved_dwg, revalidation, admin_received, peg_job]

    task_names = [ "Scope Job", "Survey Job", "Design Maintenance", "Initiate SME's",
                  "LV Drop and CATAN", "Design Calculations", "Preliminary Drawing",
                  "Check Internals", "Peer Check", "Outage Management", "Admin Emails",
                  "Risk Assessments", "Obtain Quotes", "Estimate", "Approved Drawing",
                  "Revalidate", "Receive Admin Approvals", "Peg Job"]

    if task_index = job_tasks.index(0)
      task_names[task_index]
    else
      "Job's Done!"
    end
  end

  def percentage_complete
    checked_count = attributes.values.count(2).to_f + attributes.values.count(1).to_f
    total_checklist_count = checked_count + attributes.values.count(0).to_f
    percent_complete = ((checked_count / total_checklist_count) * 100)
    # Round down to number divisible by 5
    (percent_complete - (percent_complete % 5)).round(0).to_s + '%'
  end
end
