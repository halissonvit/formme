require 'rails_helper'

RSpec.describe "poole_app_forms/new", type: :view do
  before(:each) do
    assign(:poole_app_form, PooleAppForm.new(
      :title => "",
      :user => nil
    ))
  end

  it "renders new poole_app_form form" do
    render

    assert_select "form[action=?][method=?]", poole_app_forms_path, "post" do

      assert_select "input#poole_app_form_title[name=?]", "poole_app_form[title]"

      assert_select "input#poole_app_form_user_id[name=?]", "poole_app_form[user_id]"
    end
  end
end
