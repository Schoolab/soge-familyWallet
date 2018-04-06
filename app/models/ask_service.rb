class AskService < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :membre
end
