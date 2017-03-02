require 'rails_helper'

feature 'Dashboard' do
  scenario 'user can see his dashboard when logged in' do
    sign_up
    expect(page).to have_content ("Dashboard")
  end
  scenario 'user cannot see his dashboard when not logged in' do
    visit '/'
    expect(page).to_not have_content ("Dashboard")
  end
end
