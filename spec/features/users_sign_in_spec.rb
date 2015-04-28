require 'acceptance_spec_helper'

feature 'Users Sign In' do
  let(:user) { create(:user) }
  let(:sign_in_page) { Pages::Users::SignInPage.new }
  let(:home_page) { Pages::HomePage.new }

  scenario 'with valid email and password' do
    sign_in_page.load
    sign_in_page.sign_in(user.email, user.password)

    expect(home_page).to be_displayed
  end
end
