class Family < ApplicationRecord
  has_many :family_pockets
  has_many :pockets, through: :family_pockets

  has_many :user_families

end
