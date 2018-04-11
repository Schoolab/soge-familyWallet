class Paiement < ApplicationRecord
  has_many :membre_paiements
  has_many :membres, through: :membre_paiements


end
