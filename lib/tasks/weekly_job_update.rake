desc "Weekly job details update email for users with active jobs"
task :weekly_job_update => :environment do
  puts "emailing users their weekly progress"
  users = User.all

  users.each do |user|
    if user.has_active_jobs
      JobMailer.thursday_update(user).deliver_now
    end
  end
  puts "done"
end
