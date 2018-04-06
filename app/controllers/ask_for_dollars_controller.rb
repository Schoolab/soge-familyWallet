class AskForDollarsController < ApplicationController
  before_action :set_ask_for_dollar, only: [:show, :edit, :update, :destroy]

  # GET /ask_for_dollars
  # GET /ask_for_dollars.json
  def index
    @ask_for_dollars = AskForDollar.all
  end

  # GET /ask_for_dollars/1
  # GET /ask_for_dollars/1.json
  def show

    @membre = Membre.find(params[:kid_id])

  end

  # GET /ask_for_dollars/new
  def new
    @ask_for_dollar = AskForDollar.new
    @membre = Membre.find(params[:kid_id])
  end

  # GET /ask_for_dollars/1/edit
  def edit
  end

  # POST /ask_for_dollars
  # POST /ask_for_dollars.json
  def create
    @ask_for_dollar = AskForDollar.new(ask_for_dollar_params)
    @membre = Membre.find(params[:kid_id])

    if @ask_for_dollar.save
      redirect_to kid_path(@membre)
    else
      render :new
    end

  end

  # PATCH/PUT /ask_for_dollars/1
  # PATCH/PUT /ask_for_dollars/1.json
  def update

    if @ask_for_dollar.update(ask_for_dollar_params)
      redirect_to kid_path(@membre)
    else
      render :edit
    end
  end

  # DELETE /ask_for_dollars/1
  # DELETE /ask_for_dollars/1.json
  def destroy
    @ask_for_dollar.destroy
    respond_to do |format|
      format.html { redirect_to ask_for_dollars_url, notice: 'Ask for dollar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ask_for_dollar
      @ask_for_dollar = AskForDollar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ask_for_dollar_params
      params.require(:ask_for_dollar).permit(:credit, :description, :object, :accepted, :has_been_reed)
    end
end
