require 'rails_helper'

describe "Deleting Jobs" do
  before do
    job = FactoryGirl.create(:job, work_request: "822145")
    user = FactoryGirl.create(:user, email: 'user@example.com',
                              password: 'secretpassword')

    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secretpassword'
    click_button 'Log in'

    click_link '822145'
  end

  it "can delete a job" do
    click_link "Delete Job"

    expect(page).to have_no_content("822145")
    expect(page).to have_content("Job has been deleted.")
  end
end
