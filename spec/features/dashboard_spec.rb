require 'rails_helper'

feature 'Dashboard' do
  scenario 'user can see his dashboard' do
    visit ('/')
    expect(page).to have_content ("Dashboard")
  end

  scenario 'user can add income' do
    
  end
end
