class Family < ApplicationRecord
  has_many :user_families

  has_many :family_poches
  has_many :poches, through: :family_poches

end
