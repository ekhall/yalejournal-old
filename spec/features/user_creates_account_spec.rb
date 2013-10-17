require 'spec_helper'

feature 'Sign in as user' do
  fixtures :users
  scenario 'with email and password' do
    visit root_path
    click_link 'Login'
    fill_in 'Email',    with: 'test@example.com'
    fill_in 'Password', with: 'mypassword'
    click_button 'Sign in'
    expect(page).to have_css '.alert', text: 'Signed in successfully.'
  end

  scenario 'with invalid email and password' do
    visit root_path
    click_link 'Login'
    fill_in 'Email',    with: 'invalid@example.com'
    fill_in 'Password', with: 'invalidpassword'
    click_button 'Sign in'
    expect(page).to have_css '.alert', text: 'Invalid email or password'
  end
end
