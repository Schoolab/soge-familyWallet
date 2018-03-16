class Membre < ApplicationRecord
  has_many :user_membres
  has_many :users, through: :user_membres
end
