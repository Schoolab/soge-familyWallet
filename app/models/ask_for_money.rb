class AskForMoney < ApplicationRecord
  belongs_to :membre
  mount_uploader :photo, PhotoUploader
end
