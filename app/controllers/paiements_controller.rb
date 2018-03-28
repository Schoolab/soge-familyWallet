class PaiementsController < ApplicationController

  # GET /paiements
  # GET /paiements.json
  def index
  end

  # GET /paiements/1
  # GET /paiements/1.json
  def show
    @paiement = Paiement.find(params[:id])
  end

  # GET /paiements/new
  def new

    @paiement = Paiement.new
  end

  # GET /paiements/1/edit
  def edit
    @paiement = Paiement.find(params[:id])
    @membre = Membre.find(params[:membre_id])
  end

  # POST /paiements
  # POST /paiements.json
  def create
    @paiement = Paiement.new(paiement_params)

    respond_to do |format|
      if @paiement.save
        format.html { redirect_to new_page_pocket_path, notice: 'Paiement was successfully created.' }
        format.json { render :show, status: :created, location: @paiement }
      else
        format.html { render :new }
        format.json { render json: @paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paiements/1
  # PATCH/PUT /paiements/1.json
  def update
    @paiement = Paiement.find(params[:id])
    @membre = Membre.find(params[:membre_id])
    respond_to do |format|
      if @paiement.update(paiement_params)
        format.html { redirect_to page_membre_path(@membre), notice: 'Paiement was successfully updated.' }
        format.json { render :show, status: :ok, location: @paiement }
      else
    raise
        format.html { render :edit }
        format.json { render json: @paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paiements/1
  # DELETE /paiements/1.json
  def destroy
    @paiement.destroy
    respond_to do |format|
      format.html { redirect_to paiements_url, notice: 'Paiement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def paiement_params
      params.require(:paiement).permit(:roof, :plafond, :mode, :adress_1, :adress_2, :cp, :city)
    end
end
