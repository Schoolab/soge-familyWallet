class UserPocket < ApplicationRecord
  belongs_to :user
  belongs_to :pocket
end
