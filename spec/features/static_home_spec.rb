require 'rails_helper'

feature 'Home page' do
  scenario 'visitor should see a welcome page' do
    visit '/'
    expect(page).to have_content ('Welcome to Millionaire Machine')
    expect(page).to have_content ('Sign in')
    expect(page).to have_content ('Sign up')
    expect(page).to_not have_link ('Add Income')
    expect(page).to_not have_link ('Add Expenditure')
    expect(page).to_not have_link ('Add Goal')

  end

end
