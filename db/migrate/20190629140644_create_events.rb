# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :categories
      t.text :description
      t.string :city
      t.string :address
      t.datetime :date
      t.string :image

      t.timestamps
    end
  end
end
