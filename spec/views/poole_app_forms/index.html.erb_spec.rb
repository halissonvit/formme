require 'rails_helper'

RSpec.describe "poole_app_forms/index", type: :view do
  before(:each) do
    assign(:poole_app_forms, [
      PooleAppForm.create!(
        :title => "",
        :user => nil
      ),
      PooleAppForm.create!(
        :title => "",
        :user => nil
      )
    ])
  end

  it "renders a list of poole_app_forms" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
