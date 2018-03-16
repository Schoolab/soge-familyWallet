class MembresController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @family = @user.membres
  end

  def show
  end

  def new
    @usermembre = UserMembre.new
    @membre = Membre.new
  end

  def create
    @membre = Membre.new(membre_params)
    @usermembre = UserMembre.new
    @usermembre.user = @user
    @usermembre.membre = @membre
    @usermembre.save
    if @membre.save
      redirect_to page_membres_path(current_user)
    else
      render :new
    end

  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def membre_params
    params.require(:membre).permit(:phone_numbre, :last_name, :fisrt_name, :birthday)
  end
end
