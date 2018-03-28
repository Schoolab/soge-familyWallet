class TransfertsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @transferts = Transfert.all
  end

  def show
  end

  def new
    @membre = Membre.find(params[:membre_id])
    @membres = @user.membres
    @transfert = Transfert.new
    @pockets = @membre.pockets
  end

  def create
    @transfert = Transfert.new(transfert_params)
    @membre = Membre.find(params[:membre_id])
    @pocket = Pocket.find(params[:transfert][:pocket])
    @transfert.user = current_user
    @transfert.membre = @membre
    @transfert.pocket = @pocket

    if @transfert.save
      render :new
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(transfert_params)
    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def transfert_params
    params.require(:transfert).permit(:value, :membre, :user, :frequence, :name)
  end
end
