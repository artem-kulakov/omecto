# frozen_string_literal: true

class AddTitleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :title, :string
    add_column :users, :description, :text
  end
end
