class PooleAppFormsController < ApplicationController
  before_action :set_poole_app_form, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  # GET /poole_app_forms
  # GET /poole_app_forms.json
  def index
    @poole_app_forms = current_user.poole_app_forms.all
  end

  # GET /poole_app_forms/1
  # GET /poole_app_forms/1.json
  def show
  end

  # GET /poole_app_forms/new
  def new
    @poole_app_form = PooleAppForm.new
  end

  # GET /poole_app_forms/1/edit
  def edit
  end

  # POST /poole_app_forms
  # POST /poole_app_forms.json
  def create
    @poole_app_form = current_user.poole_app_forms.build(poole_app_form_params)

    respond_to do |format|
      if @poole_app_form.save
        format.html { redirect_to @poole_app_form, notice: 'Poole app form was successfully created.' }
        format.json { render :show, status: :created, location: @poole_app_form }
      else
        format.html { render :new }
        format.json { render json: @poole_app_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poole_app_forms/1
  # PATCH/PUT /poole_app_forms/1.json
  def update
    respond_to do |format|
      if @poole_app_form.update(poole_app_form_params)
        format.html { redirect_to @poole_app_form, notice: 'Poole app form was successfully updated.' }
        format.json { render :show, status: :ok, location: @poole_app_form }
      else
        format.html { render :edit }
        format.json { render json: @poole_app_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poole_app_forms/1
  # DELETE /poole_app_forms/1.json
  def destroy
    @poole_app_form.destroy
    respond_to do |format|
      format.html { redirect_to poole_app_forms_url, notice: 'Poole app form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_poole_app_form
    @poole_app_form = current_user.poole_app_forms.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def poole_app_form_params
    params.require(:poole_app_form).permit(:title, :api_key, :api_secret)
  end

  def not_found
    # message = "PooleAppForm with ID #{params[:id]} not found."
    # logger.error message
    # redirect_to not_found_url, info: message
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
end
