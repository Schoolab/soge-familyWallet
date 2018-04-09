class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :create, :new, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = @user.services
  end

  # GET /services/1
  # GET /services/1.json
  def show

  end

  # GET /services/new
  def new
    @as = AskService.new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)

      if @service.save
        @membres = Membre.where(id: params[:ask_service][:membre_id])
        raise
        @membres.each do |membre|
          @as = AskService.new
          @as.user = @user
          @as.membre = membre
          @as.service = @service
          @as.save
        end
        redirect_to page_service(@user, @service)
      else
        render :new
      end

  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.js {render inline: "location.reload();" }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:description, :amout, :hour, :minute, :accepted, :has_been_done)
    end
end
