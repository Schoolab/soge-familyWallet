class Membre < ApplicationRecord
  has_many :user_membres
  has_many :users, through: :user_membres

  has_many :membre_paiements
  has_many :paiements, through: :membre_paiements

  has_many :transferts
  has_many :user_pockets
  has_many :pockets, through: :user_pockets

  mount_uploader :photo, PhotoUploader

  def name
    fisrt_name
  end
end
