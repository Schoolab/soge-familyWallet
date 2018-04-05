class KidsController < ApplicationController
  def index
    @membres = Membre.all
  end
  def show
    @membre = Membre.find(params[:id])

  end

end
