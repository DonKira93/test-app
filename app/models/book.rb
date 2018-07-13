class Book < ApplicationRecord

  has_many :reviews
  has_many :books_and_book_shelves
  has_many :book_shelves,  -> { distinct } , through: :books_and_book_shelves

  def add_book(book, book_shelf)
    book_shelf.books << book
  end

  def remove_book(book, book_shelf)
    book.book_shelves.delete(book_shelf)
  end

end
