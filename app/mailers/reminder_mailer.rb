class ReminderMailer < ApplicationMailer

  def two_week_reminder user_list
    @user = user
    @job = job

    mail(to: @user.email, subject: "WR#{@job.work_request} is due in two weeks!")
  end

  # def one_week_reminder user_list
  #   user_list.each do |user|
  #     user.jobs.each do |job|
  #       if
  #   @user = user
  #   @job = job
  #
  #   mail(to: @user.email, subject: "WR#{@job.work_request} is due in one week!")
  # end
end
