require 'acceptance_spec_helper'

feature 'Users Add PooleApp Form', js: true do
  let!(:user) { create(:user) }
  let(:home_page) { Pages::HomePage.new }
  let(:new_poole_form_page) { Pages::PooleAppForms::NewPage.new }

  scenario 'with valid integration key' do
    sign_in_user(user)

    home_page.menu.forms.click
    home_page.menu.wait_for_new_poole_form

    home_page.menu.new_poole_form.click
    expect(new_poole_form_page).to be_displayed

    new_poole_form_page.create_form('title', 'api_key', 'api_secret')

    expect(page).to have_content 'Poole app form was successfully created.'
  end
end
