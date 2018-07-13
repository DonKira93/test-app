class Initialization < ActiveRecord::Migration[5.1]
  def change
    create_table :book_shelves do |t|
      t.string :descritpion
      t.timestamps
    end
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.string :rating
      t.timestamps
    end
    create_table :books_and_book_shelves do |t|
      t.integer :book_id
      t.integer :book_shelf_id
    end
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :book_shelf_id
      t.string :title
      t.string :content
    end
  end
end
