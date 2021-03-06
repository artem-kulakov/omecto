# frozen_string_literal: true

class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
