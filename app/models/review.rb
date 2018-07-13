class Review < ApplicationRecord
  
  belongs_to :book, required: false
  belongs_to :book_shelf, required: false
end
