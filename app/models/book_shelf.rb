class BookShelf < ApplicationRecord

  has_many :reviews
  has_many :books_and_book_shelves
  has_many :books,  -> { distinct }, through: :books_and_book_shelves



end
