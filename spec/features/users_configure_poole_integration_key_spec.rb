require 'acceptance_spec_helper'

feature 'Users Create PooleApp Form', js: true do
  let(:user) { create(:user) }
  let(:home_page) { Pages::HomePage.new }
  let(:new_poole_form_page) { Pages::Forms::NewPooleFormPage.new }

  scenario 'with valid integration key' do
    sign_in_user(user)

    pending('not impĺemented yet')
    screenshot_and_open_image

    home_page.menu.forms.click
    screenshot_and_open_image

    home_page.new_poole_form.click

    expect(new_poole_form_page).to be_displayed

    expect(page).to have_field 'user_integration_poole_app_visualization_key'
  end
end