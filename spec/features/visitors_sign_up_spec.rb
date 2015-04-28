require 'acceptance_spec_helper'

feature 'Visitors Sign Up', js: true  do
  let(:sign_up_page) { Pages::Users::SignUpPage.new }

  scenario 'with valid email and password' do
    sign_up_page.load

    sign_up_page.sign_up('user@email.com', 'password', 'password')

    expect(page).to have_content 'Welcome'
  end
end