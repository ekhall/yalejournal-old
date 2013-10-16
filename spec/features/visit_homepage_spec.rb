require 'spec_helper'

feature "Visit the homepage" do
  scenario 'user sees the relevant information' do
    visit root_path
    expect(page).to have_css 'title', text: 'Welcome to Journal Club'
    expect(page).to have_css '[data-role="description"]'
  end
end
