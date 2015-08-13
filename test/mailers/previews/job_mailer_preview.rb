# Preview all emails at http://localhost:3000/rails/mailers/job_mailer
class JobMailerPreview < ActionMailer::Preview
  def thursday_reminder
    @email = JobMailer.thursday_update([User.first])
  end
end
