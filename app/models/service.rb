class Service < ApplicationRecord
  has_many :ask_services
  has_many :users, through: :ask_services
  has_many :membres, through: :ask_services

  HOUR = Time.now.hour.to_s
  MINUTE = Time.now.min.to_s

end
