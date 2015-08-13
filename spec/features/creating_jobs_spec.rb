require 'rails_helper'

describe "Creating Jobs" do
    before do
      user = FactoryGirl.create(:user, email: 'user@example.com',
                                password: 'secretpassword')

      visit '/'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'secretpassword'
      click_button 'Log in'

      click_button 'New Job'
    end

  it "can create a job" do
    fill_in 'Work request', with: '822145'
    fill_in 'Work order', with: '44678922'

    click_button 'Create Job'

    expect(page).to have_content("Work Request has been created.")

    job = Job.find_by(work_request: "822145")

    expect(page.current_url).to eql(edit_job_url(job))
  end

  it "can't create a job without a work request" do
    fill_in 'Work request', with: ''

    click_button 'Create Job'

    expect(page).to have_content("Please check the form and try again.")
    expect(page).to have_content("Work requestcan't be blank")
  end

  it "has constraints around work request length" do
    fill_in 'Work request', with: '122'

    click_button 'Create Job'

    expect(page).to have_content("Please check the form and try again.")
  end
end
