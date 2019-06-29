class EventCategory < ApplicationRecord
  belongs_to :event_id
  belongs_to :category_id
end
