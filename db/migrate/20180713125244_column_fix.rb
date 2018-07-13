class ColumnFix < ActiveRecord::Migration[5.1]
  def change
    rename_column :book_shelves, :descritpion, :description
  end
end
