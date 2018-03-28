class UserPocket < ApplicationRecord
  belongs_to :user
  belongs_to :pocket
  belongs_to :membre
end
