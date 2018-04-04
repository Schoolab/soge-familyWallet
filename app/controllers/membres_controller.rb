class MembresController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user
  before_action :set_membre, only: [:show, :update]

  def index
    @family = @user.membres
    @pockets = @user.pockets
  end

  def compoteste
    @membre = Membre.find(params[:membre_id])
  end

  def show
  end

  def bravo
    @membre = Membre.find(params[:membre_id])

  end

  def addphoto
    @membre = Membre.find(params[:membre_id])
  end

  def profilecreation
    @membre = Membre.find(params[:membre_id])
    @paiement = Paiement.new
  end

  def new
    @membre = Membre.new
    @usermembre = UserMembre.new
  end

  def create
    @membre = Membre.new(membre_params)
    @usermembre = UserMembre.new
    @usermembre.user = @user
    @usermembre.membre = @membre
    @usermembre.save
    if @membre.save
      redirect_to page_membre_compte_path(@user, @membre)
    else
      render :new
    end

  end

  def compte
    @membre = Membre.find(params[:membre_id])

  end

  def edit
  end

  def update
    @membre.update(membre_params)
    redirect_to page_membre_path(@user, @membre)
  end

  private
  def set_membre
    @membre = Membre.find(params[:id])
  end
  def set_user
    @user = current_user
  end

  def membre_params
    params.require(:membre).permit(:phone_numbre, :sexe, :last_name, :fisrt_name, :birthday, :photo)
  end
end
