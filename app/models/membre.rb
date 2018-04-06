class Membre < ApplicationRecord
  has_many :user_membres
  has_many :users, through: :user_membres

  has_many :membre_paiements
  has_many :paiements, through: :membre_paiements

  has_many :transferts
  has_many :user_pockets
  has_many :pockets, through: :user_pockets

  has_many :ask_for_dollars

  has_many :ask_services
  has_many :services, through: :ask_services

  mount_uploader :photo, PhotoUploader

  def name
    fisrt_name
  end
end
