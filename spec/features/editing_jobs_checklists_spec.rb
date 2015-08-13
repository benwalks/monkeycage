require 'rails_helper'

describe "Edit a Jobs Checklist " do
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

  it "has a checklist" do
    expect(page).to have_content("Scope Job")
    expect(page).to have_content("Approved Drawing")
  end
end
