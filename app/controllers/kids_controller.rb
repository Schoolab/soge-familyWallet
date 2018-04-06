class KidsController < ApplicationController
  def index
    @membres = Membre.all
  end
  def show
    @membre = Membre.find(params[:id])
    @ask_for_dollar = AskForDollar.new
  end


end
