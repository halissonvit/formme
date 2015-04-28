require 'acceptance_spec_helper'

feature 'Visitors Sign Up', js: true  do
  let(:sign_up_page) { Pages::Users::SignUpPage.new }
  let(:home_page) { Pages::HomePage.new }

  scenario 'with valid email and password' do
    sign_up_page.load
    sign_up_page.sign_up(Faker::Internet.email, 'password', 'password')

    expect(home_page).to be_displayed
  end
end
