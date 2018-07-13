class BookShelvesController < ApplicationController
  before_action :set_book_shelf_and_books, only: [:show, :edit, :update, :destroy]

  def index
    @book_shelves = BookShelf.all
    @books = Book.all
  end
  def show
  end
  def new
    @book_shelf = BookShelf.new
  end
  def create
    @book_shelf = BookShelf.new(book_shelf_params)
    if @book_shelf.save
      redirect_to book_shelves_path, notice: 'saved.'
    else
      render "new"
    end
  end

  private
    def set_book_shelf_and_books
      @book_shelf = BookShelf.find(params[:id])
      @books = Book.all
    end

    def book_shelf_params
      params[:book_shelf].permit!
    end
end
