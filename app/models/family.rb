class Family < ApplicationRecord
  has_many :family_poches
  has_many :poches, through: :family_poches
end
