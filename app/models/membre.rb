class Membre < ApplicationRecord
  has_many :user_membres
  has_many :users, through: :user_membres

  has_many :transferts

  def name
    fisrt_name
  end
end
