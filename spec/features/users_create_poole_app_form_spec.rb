require 'acceptance_spec_helper'

feature 'Users Create PooleApp Form', js: true do
  let(:user) { build(:user) }
  let(:sign_up_page) { Pages::Users::SignUpPage.new }
  let(:sign_in_page) { Pages::Users::SignInPage.new }
  let(:home_page) { Pages::HomePage.new }
  # let(:new_poole_form_page) { Pages::Forms::NewPooleFormPage.new }

  scenario 'with valid integration key' do
    sign_up_user(user)

    home_page.menu.forms.click
    home_page.menu.wait_for_new_poole_form

    home_page.menu.new_poole_form.click


    skip('wip: implementing new poole form page')
    expect(new_poole_form_page).to be_displayed

    expect(page).to have_field 'poole_app_form_api_secret'
    expect(page).to have_field 'poole_app_form_api_key'
  end
end