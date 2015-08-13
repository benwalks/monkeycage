require 'rails_helper'

describe "Jobs show required detail on index page" do
  before do
    job = FactoryGirl.create(:job, work_request: "922145",
                              notes: "-remember to do blah.\n
                              - approval received \n
                              - waiting on admin")

    user = FactoryGirl.create(:user, email: 'user@example.com',
                              password: 'secretpassword')

    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secretpassword'
    click_button 'Log in'
  end
  it "displays the last line from the notes field" do
    expect(page).to have_content("- waiting on admin")
  end
end
