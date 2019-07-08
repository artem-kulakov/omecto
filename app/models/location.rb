class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    city
  end
end
