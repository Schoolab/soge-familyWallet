class Transfert < ApplicationRecord
  belongs_to :user
  belongs_to :membre
  belongs_to :pocket

  FREQUENCES = ["Par mois", "Par semaine", "Par jours"]
  validates :frequence, inclusion: {in: FREQUENCES }
end
