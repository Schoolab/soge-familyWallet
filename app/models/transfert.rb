class Transfert < ApplicationRecord
  belongs_to :user
  belongs_to :membre
  belongs_to :pocket

  FREQUENCES = ["Mois", "Semaine", "Jours"]
  validates :frequence, inclusion: {in: FREQUENCES }
end
