class Pocket < ApplicationRecord
  has_many :family_pockets
  has_many :user_pockets
  has_many :transferts

end
