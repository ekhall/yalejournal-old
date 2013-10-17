require 'spec_helper'

feature 'Create account as new user' do
  scenario 'with email and password' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email',    with: 'newuser@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password confirmation', with: 'newpassword'
    click_button 'Sign up'
    expect(page).to have_css '.alert', text: 'You have signed up successfully'
  end
end

