class Paiement < ApplicationRecord
  has_many :membre_paiements
  has_many :membres, through: :membre_paiements

  FREQUENCES = ["Mois", "Semaine", "Jour"]
  validates :plafond, inclusion: {in: FREQUENCES }
  MODE = ["ApplePay", "PayLib", "CB"]
end
