class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_families
  has_many :families, through: :user_families

  has_many :user_membres
  has_many :membres, through: :user_membres

  has_many :user_pockets
  has_many :pockets, through: :user_pockets

  has_many :transferts

end
