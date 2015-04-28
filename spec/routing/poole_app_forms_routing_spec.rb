require "rails_helper"

RSpec.describe PooleAppFormsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/poole_app_forms").to route_to("poole_app_forms#index")
    end

    it "routes to #new" do
      expect(:get => "/poole_app_forms/new").to route_to("poole_app_forms#new")
    end

    it "routes to #show" do
      expect(:get => "/poole_app_forms/1").to route_to("poole_app_forms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/poole_app_forms/1/edit").to route_to("poole_app_forms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/poole_app_forms").to route_to("poole_app_forms#create")
    end

    it "routes to #update" do
      expect(:put => "/poole_app_forms/1").to route_to("poole_app_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/poole_app_forms/1").to route_to("poole_app_forms#destroy", :id => "1")
    end

  end
end
