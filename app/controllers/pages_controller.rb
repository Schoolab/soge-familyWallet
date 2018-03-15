class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @user = current_user
  end

  def show
    @use = current_user
  end

  def edit
    @user = current_user
  end


end
