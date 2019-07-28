# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :city
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
