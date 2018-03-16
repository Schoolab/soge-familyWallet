class UserMembre < ApplicationRecord
  belongs_to :user
  belongs_to :membre
end
