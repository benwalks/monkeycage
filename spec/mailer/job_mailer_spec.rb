require 'rails_helper'

describe JobMailer do
  fixtures :users, :jobs

  it "successfully uses fixtures" do
    users(:ben)
    users(:tristan)
  end

  it "successfully associates job fixtures" do
    job = jobs(:job_one)
    user = users(:ben)

    expect(job.user_id).to eql(user.id)
  end

  it "fixtures shows users with correct jobs" do
    user = users(:ben)

    expect(user.jobs.count).to eq(3)
  end

  it "ensures has_active_jobs method works" do
    user = users(:ben)
    user_two = users(:tristan)

    expect(user.has_active_jobs).to be_truthy
    expect(user_two.has_active_jobs).to be_falsey
  end

  # it "only sends emails to users with active jobs" do
  #   users = [users(:ben), users(:tristan)]
  #
  #   JobMailer.thursday_update(users).deliver_now
  #   expect(ActionMailer::Base.deliveries.count).to eq(1)
  # end


  it "sends an email when a single user is called" do
    user = users(:ben)

    JobMailer.thursday_update(user).deliver_now
    expect(ActionMailer::Base.deliveries.count).to eq(1)
  end

  it "sends the email to the right address" do
    user = users(:ben)

    JobMailer.thursday_update(user).deliver_now
    expect(ActionMailer::Base.deliveries.last.to).to eq([user.email])
  end

  it "has the correct from address" do
    user = users(:ben)

    JobMailer.thursday_update(user).deliver_now
    expect(ActionMailer::Base.deliveries.last.from).to eq(["chief@monkeycage.com"])
  end

  it "has the correct subject line" do
    user = users(:ben)

    JobMailer.thursday_update(user).deliver_now
    expect(ActionMailer::Base.deliveries.last.subject).to eq("Weekly Job Update - MonkeyCage")
  end

  it "contains all required information" do
    user = users(:ben)

    JobMailer.thursday_update(user).deliver_now
    email = ActionMailer::Base.deliveries.last

    expect(email.body.encoded).to include("12345")
    expect(email.body.encoded).to include("67890")
    expect(email.body.encoded).to include("Gud job")
    expect(email.body.encoded).to_not include("112345")
  end

end
