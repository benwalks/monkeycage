require 'rails_helper'

describe 'Viewing active jobs' do
  before do
    FactoryGirl.create(:job, work_request: "981141", completed: 0)
    FactoryGirl.create(:job, work_request: "322134", completed: 2)
    FactoryGirl.create(:user, email: 'user@example.com',
                              password: 'secretpassword')

    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secretpassword'
    click_button 'Log in'
  end

  it 'only shows active jobs on the index' do
    expect(page).to have_content("981141")
    expect(page).to_not have_content("322134")
  end

  it 'can set a job to completed' do
    click_link "981141"

    choose "job_completed_2"
    click_button "Update Job"
    expect(page).to_not have_content("981141")

    click_link "archive"

    expect(page).to have_content("981141")
  end

  it 'can view completed jobs' do
    click_link 'archive'

    expect(page).to have_content("322134")
  end
end
