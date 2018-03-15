class Member < ApplicationRecord
  has_many :user_members
  has_many :members, throug: :user_members
end
