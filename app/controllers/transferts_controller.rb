class TransfertsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @transferts = @user.transferts
  end

  def show
  end

  def new
    @membres = @user.membres
    @transfert = Transfert.new
  end

  def create
    @pockets = Pocket.last(3)
    @transfert = Transfert.new(transfert_params)
    @transfert.user = current_user
    @transfert.membre = Membre.last
    if @transfert.save
      redirect_to page_paiements_path(current_user)
    else
      raise
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
    params.require(:transfert).permit(:pocket_id, :value, :membre, :user, :frequence, :name)
  end
end
