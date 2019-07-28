# frozen_string_literal: true

class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
