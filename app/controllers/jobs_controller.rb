class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @jobs = current_user.jobs.completed(false).all.order("due_date asc")
  end

  def completed
    @jobs = current_user.jobs.completed(true).all.order("due_date asc")
  end

  def new
    @job = current_user.jobs.build
  end

  def create
    @job = current_user.jobs.build(job_params)

    if @job.save
      flash[:success] = "Work Request has been created."
      redirect_to edit_job_path(@job)
    else
      flash[:error] = "Please check the form and try again."
      render "new"
    end
  end

  def show
    unowned_job?
  end

  def edit
    unowned_job?
  end

  def update
    if @job.update(job_params)
      flash[:success] = "Job updated"
      redirect_to action: "index"
    else
      flash[:error] = "Hmmm, something went wrong."
      render "edit"
    end
  end

  def destroy
    @job.destroy
    flash[:notice] = "Job has been deleted."
    redirect_to jobs_path
  end

  private

    def set_job
      job = Job.find(params[:id])
      if job.user_id === current_user.id
        @job = job
      else
        false
      end
    end

    def unowned_job?
      if set_job == false
        flash[:error] = "That doesn't seem to be your job!"
        redirect_to action: 'index'
      end
    end

    def job_params
      params.require(:job).permit(:work_request, :work_order, :estimate_number, :due_date, :design_maint, :description, :scope_job,
                                                    :survey_job, :risk_assess, :init_smes, :lv_drop_catan, :design_calcs, :prelim_dwg,
                                                    :check_internals, :peer_check, :outage_manage, :obtain_quotes, :estimate,
                                                    :approved_dwg, :admin_emails, :revalidation, :admin_received, :peg_job, :notes,
                                                    :completed )
    end

end
