class Poch < ApplicationRecord

  has_many :family_pochs
  has_many :families, through: :family_pochs

end
