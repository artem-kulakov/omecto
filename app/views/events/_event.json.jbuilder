# frozen_string_literal: true

json.extract! event, :id, :title, :description, :city, :address, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
