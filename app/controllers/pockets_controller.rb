class PocketsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @pockets = @user.pockets
  end

  def show
  end

  def new
    @userpocket = UserPocket.new
    @pocket = Pocket.new
    @membre = Membre.find(params[:membre_id])
    @transfert = Transfert.new
  end

  def create
    # raise
    @membre = Membre.find(params[:membre_id])
    @pocket = Pocket.new(pocket_params)
    @userpocket = UserPocket.new
    @userpocket.user = @user
    @userpocket.pocket = @pocket
    @userpocket.membre = @membre
    @userpocket.save
    if @pocket.save
      render :new
    else
      render :new
    end

  end

  def edit
  end

  def update
    @user.update(pocket_params)
    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def pocket_params
    params.require(:pocket).permit(:name, :value)
  end
end
