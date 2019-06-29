class CreateEventCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :event_categories do |t|
      t.references :event_id, foreign_key: true
      t.references :category_id, foreign_key: true

      t.timestamps
    end
  end
end
