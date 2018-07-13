class BooksController < ApplicationController
  before_action :set_book_shelf
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = @book_shelf.books.order('id DESC')
  end
  def show
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: 'saved.'
    else
      render "new"
    end
  end
  def edit
  end
  def update
  end

  private
    def set_book_shelf
      @book_shelf = BookShelf.find(params[:id])
    end

    def set_book
      @book = @book_shelf.books.find(params[:id])
    end

    def book_params
      params[:book].permit!
    end
end
