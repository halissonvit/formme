require 'rails_helper'

RSpec.describe "PooleAppForms", type: :request do
  describe "GET /poole_app_forms" do
    it "works! (now write some real specs)" do
      get poole_app_forms_path
      expect(response).to have_http_status(200)
    end
  end
end
