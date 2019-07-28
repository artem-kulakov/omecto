# frozen_string_literal: true

class RemoveColumnFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :cat_id, :string
  end
end
