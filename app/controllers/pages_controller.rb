class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]
  before_action :set_user

  def home
  end

  def show
  end
  def edit
  end

  def update
    @user.update(user_params)
    redirect_to page_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :birthday, :mail, :email, :photo)
  end
end
