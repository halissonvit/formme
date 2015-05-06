require 'rails_helper'

RSpec.describe "poole_app_forms/index", type: :view do
  before(:each) do
    @forms = [create(:poole_app_form), create(:poole_app_form)]
    assign(:poole_app_forms, @forms)
  end

  it "renders a list of poole_app_forms" do
    render
    @forms.each do |form|
      expect(rendered).to have_selector('tr>td', text: form.title)
    end
  end
end
