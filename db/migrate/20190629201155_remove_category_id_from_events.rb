class RemoveCategoryIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :categories_id, :integer
  end
end
