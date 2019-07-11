class User < ApplicationRecord
	has_many :events
  has_many :participations
  has_many :events, through: :participations
	has_many :blogs

  has_one_attached :image

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
