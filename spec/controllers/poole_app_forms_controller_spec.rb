require 'rails_helper'

RSpec.describe PooleAppFormsController, type: :controller do

  let(:user) { create(:user) }

  let(:valid_attributes) {
    {title: 'poole_form_app', api_secret: 'r4nd0mh4shs&cr&7', api_key: 'r4nd0mh4shn0ts0s&cr&7', user: user}
  }

  let(:invalid_attributes) {
    {title: '', api_secret: '', api_key: ''}
  }

  before(:each) { login_user(user) }

  describe "GET #index" do
    it "assigns all poole_app_forms as @poole_app_forms" do
      poole_app_form = PooleAppForm.create! valid_attributes
      get :index, {}
      expect(assigns(:poole_app_forms)).to eq([poole_app_form])
    end
  end

  describe "GET #show" do
    it "assigns the requested poole_app_form as @poole_app_form" do
      poole_app_form = PooleAppForm.create! valid_attributes
      get :show, {:id => poole_app_form.to_param}
      expect(assigns(:poole_app_form)).to eq(poole_app_form)
    end
  end

  describe "GET #new" do
    it "assigns a new poole_app_form as @poole_app_form" do
      get :new, {}
      expect(assigns(:poole_app_form)).to be_a_new(PooleAppForm)
    end
  end

  describe "GET #edit" do
    it "assigns the requested poole_app_form as @poole_app_form" do
      poole_app_form = PooleAppForm.create! valid_attributes
      get :edit, {:id => poole_app_form.to_param}
      expect(assigns(:poole_app_form)).to eq(poole_app_form)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new PooleAppForm for the current user" do
        expect {
          post :create, {:poole_app_form => valid_attributes}
        }.to change(user.poole_app_forms, :count).by(1)
      end

      it "assigns a newly created poole_app_form as @poole_app_form" do
        post :create, {:poole_app_form => valid_attributes}
        expect(assigns(:poole_app_form)).to be_a(PooleAppForm)
        expect(assigns(:poole_app_form)).to be_persisted
      end

      it "redirects to the created poole_app_form" do
        post :create, {:poole_app_form => valid_attributes}
        expect(response).to redirect_to(PooleAppForm.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved poole_app_form as @poole_app_form" do
        post :create, {:poole_app_form => invalid_attributes}
        expect(assigns(:poole_app_form)).to be_a_new(PooleAppForm)
      end

      it "re-renders the 'new' template" do
        post :create, {:poole_app_form => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {title: 'new_poole_form_app', api_secret: 'newr4nd0mh4shs&cr&7', api_key: 'newr4nd0mh4shn0ts0s&cr&7', user: user}
      }

      it "updates the requested poole_app_form" do
        poole_app_form = PooleAppForm.create! valid_attributes
        put :update, {:id => poole_app_form.to_param, :poole_app_form => new_attributes}
        poole_app_form.reload
        expect(poole_app_form.title).to eql(new_attributes[:title])
        expect(poole_app_form.api_secret).to eql(new_attributes[:api_secret])
        expect(poole_app_form.api_key).to eql(new_attributes[:api_key])
      end

      it "assigns the requested poole_app_form as @poole_app_form" do
        poole_app_form = PooleAppForm.create! valid_attributes
        put :update, {:id => poole_app_form.to_param, :poole_app_form => valid_attributes}
        expect(assigns(:poole_app_form)).to eq(poole_app_form)
      end

      it "redirects to the poole_app_form" do
        poole_app_form = PooleAppForm.create! valid_attributes
        put :update, {:id => poole_app_form.to_param, :poole_app_form => valid_attributes}
        expect(response).to redirect_to(poole_app_form)
      end
    end

    context "with invalid params" do
      it "assigns the poole_app_form as @poole_app_form" do
        poole_app_form = PooleAppForm.create! valid_attributes
        put :update, {:id => poole_app_form.to_param, :poole_app_form => invalid_attributes}
        expect(assigns(:poole_app_form)).to eq(poole_app_form)
      end

      it "re-renders the 'edit' template" do
        poole_app_form = PooleAppForm.create! valid_attributes
        put :update, {:id => poole_app_form.to_param, :poole_app_form => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested poole_app_form" do
      poole_app_form = PooleAppForm.create! valid_attributes
      expect {
        delete :destroy, {:id => poole_app_form.to_param}
      }.to change(user.poole_app_forms, :count).by(-1)
    end

    it "redirects to the poole_app_forms list" do
      poole_app_form = PooleAppForm.create! valid_attributes
      delete :destroy, {:id => poole_app_form.to_param}
      expect(response).to redirect_to(poole_app_forms_path)
    end
  end

end
