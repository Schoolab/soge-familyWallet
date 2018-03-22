class MembrePaiement < ApplicationRecord
  belongs_to :membre
  belongs_to :paiement
end
