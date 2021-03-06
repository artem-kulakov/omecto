# frozen_string_literal: true

class RemoveCategoriesFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :categories, :string
  end
end
