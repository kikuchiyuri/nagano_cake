class RenameColumnToItems < ActiveRecord::Migration[6.1]
  def change
    
    rename_column :items, :genne_id, :genre_id
  end
end
