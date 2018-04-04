class KidsController < ApplicationController
  def index
    @membre = Membre.last
  end
  def show
    @membre = Membre.last

  end
  def askformonney

  end
end
