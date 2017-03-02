require 'rails_helper'

feature 'Dashboard' do
  scenario 'user can only see his income on the dashboard when logged in' do

    # user 1 sign_up
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: "test@test.com"
    fill_in 'Password', with: "password"
    fill_in 'Password confirmation', with: "password"
    click_button 'Sign up'

    #user 1 adds income

    click_link 'Add Income'
    fill_in 'Amount', with: '100'
    fill_in 'Name', with: 'Salary'
    fill_in 'Date', with: '28-02-2017'
    click_button 'Add Entry'


    #user 1 signs out
    click_link 'Sign out'

    #user 2 signs up
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: "test2@test.com"
    fill_in 'Password', with: "password"
    fill_in 'Password confirmation', with: "password"
    click_button 'Sign up'

    #user 2 adds Income
    click_link 'Add Income'
    fill_in 'Amount', with: '100'
    fill_in 'Name', with: 'Dividends'
    fill_in 'Date', with: '28-02-2017'
    click_button 'Add Entry'

    expect(page).to have_content ("Dashboard")
    expect(current_path).to eq dashboards_path
    expect(page).to_not have_content ("Salary")
    expect(page).to have_content ("Dividends")


  end

  scenario 'user cannot see his dashboard when not logged in' do
    visit '/'
    expect(page).to_not have_content ("Dashboard")
  end

end
