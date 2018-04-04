class AskForMoneyController < ApplicationController
  before_action :set_user


  def show
  end

  def new

    @askformonney = AskForMoney.new
    @membre = Membre.find(params[:kid_id])
  end

  def create
    @membre = Membre.find(params[:kid_id])
    @askformonney = AskForMoney.new(ask_params)
    @askformonney.membre = @membre
    raise
    if @askformonney.save
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

  def ask_params
    params.require(:ask_for_money).permit(:description, :credit, :objet, :finish)
  end

end
