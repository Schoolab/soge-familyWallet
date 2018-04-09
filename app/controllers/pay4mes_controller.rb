class Pay4mesController < ApplicationController
  def show
  end

  def index
    @kid = Membre.find(params[:kid_id])
    @pay4mes = @kid.services
    @user = @kid.users[0]
  end

  def new
  end

  def create
  end

  def edit
    raise
  end

  def update
  end

  def destroy
  end
end
