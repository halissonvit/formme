require 'rails_helper'

RSpec.describe "poole_app_forms/show", type: :view do
  before(:each) do
    @poole_app_form = assign(:poole_app_form, create(:poole_app_form))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
