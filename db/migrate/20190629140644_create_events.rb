class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.references :categories, foreign_key: true
      t.text :description
      t.string :city
      t.string :address
      t.datetime :date

      t.timestamps
    end
  end
end
