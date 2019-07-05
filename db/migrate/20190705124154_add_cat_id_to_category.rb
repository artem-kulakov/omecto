class AddCatIdToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :cat_id, :string
  end
end
