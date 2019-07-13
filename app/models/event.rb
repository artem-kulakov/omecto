class Event < ApplicationRecord
	belongs_to :user

  has_many :participations
  has_many :users, through: :participations

  belongs_to :location
  accepts_nested_attributes_for :location

  has_many :event_categories
  has_many :categories, through: :event_categories
  accepts_nested_attributes_for :event_categories

  has_one_attached :image
end
