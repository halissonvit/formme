require 'acceptance_spec_helper'

feature 'Users Sign In' do
  let(:user) { create(:user) }

  scenario 'with valid email and password' do
    sign_in_user(user)

    expect(page).to have_content 'Welcome'
  end
end