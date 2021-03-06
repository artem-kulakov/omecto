# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :events

  geocoded_by :address
  after_validation :geocode

  def address
    city
  end
end
