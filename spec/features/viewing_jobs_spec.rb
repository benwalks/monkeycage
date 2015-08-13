require 'rails_helper'

describe "Can see a list of jobs" do
  before do
    job = FactoryGirl.create(:job, work_request: "822145")
    job_two = FactoryGirl.create(:job, work_request: "955111")

    user = FactoryGirl.create(:user, email: 'user@example.com',
                              password: 'secretpassword')

    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secretpassword'
    click_button 'Log in'
  end

  it "lists all jobs" do

    expect(page).to have_content("822145")
    expect(page).to have_content("955111")
  end
end
