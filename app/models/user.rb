class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_families
  has_many :families, through: :user_families

  def is_adult?
    adult
  end

  def set_to_adult
    adult = false
  end

end
