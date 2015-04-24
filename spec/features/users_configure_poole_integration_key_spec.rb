require 'acceptance_spec_helper'

feature 'Users Configure PooleApp Integration key' do
  let(:user) { create(:user) }
  let(:home_page) { create(:user) }

  scenario 'with valid integration key' do
    sign_in_user(user)

    pending('Not implemented yet')

    home_page.user_account.click_link
    config_page

    expect(page).to have_field 'user_integration_poole_app_visualization_key'
  end
end