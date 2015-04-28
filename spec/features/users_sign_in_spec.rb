require 'acceptance_spec_helper'

feature 'Users Sign In' do
  let(:user) { create(:user) }
  let(:home_page) { Pages::HomePage.new }

  scenario 'with valid email and password' do
    sign_in_user(user)
    expect(home_page).to be_displayed

    expect(home_page).to have_content 'Welcome'
  end
end
