require 'rails_helper'

RSpec.describe "poole_app_forms/edit", type: :view do
  before(:each) do
    @poole_app_form = assign(:poole_app_form, PooleAppForm.create!(
      :title => "",
      :user => nil
    ))
  end

  it "renders the edit poole_app_form form" do
    render

    assert_select "form[action=?][method=?]", poole_app_form_path(@poole_app_form), "post" do

      assert_select "input#poole_app_form_title[name=?]", "poole_app_form[title]"

      assert_select "input#poole_app_form_user_id[name=?]", "poole_app_form[user_id]"
    end
  end
end
