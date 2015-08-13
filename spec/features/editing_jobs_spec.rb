require 'rails_helper'

describe "Editing Projects" do
  before do
    job = FactoryGirl.create(:job, work_request: "822145")

    user = FactoryGirl.create(:user, email: 'user@example.com',
                              password: 'secretpassword')

    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secretpassword'
    click_button 'Log in'

    click_link "822145"
  end

  it "can edit a project" do
    fill_in "Work Order", with: "80808080"

    click_button "Update Job"

    expect(page).to have_content("Job updated")
  end

  it "won't update if attributes are invalid" do
    fill_in "Work Request", with: ""

    click_button "Update Job"

    expect(page).to have_content("Hmmm, something went wrong.")
  end
end
