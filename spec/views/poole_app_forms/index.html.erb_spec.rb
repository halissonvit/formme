require 'rails_helper'

RSpec.describe "poole_app_forms/index", type: :view do
  before(:each) do
    assign(:poole_app_forms, [create(:poole_app_form), create(:poole_app_form)])
  end

  it "renders a list of poole_app_forms" do
    render
    PooleAppForm.all.each do |form|
      assert_select "tr>td", :text => form.title
    end
  end
end
