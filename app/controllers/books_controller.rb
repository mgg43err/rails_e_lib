class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.available
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  def take
    if @book.update(is_taken: true)
      redirect_to books_path, notice: 'Book was successfully taken.'
    else
      redirect_to books_path, alert: 'Unable to take the book.'
    end
  end

  def return
    if @book.update(is_taken: false)
      redirect_to books_path, notice: 'Book was successfully returned.'
    else
      redirect_to books_path, alert: 'Unable to return the book.'
    end
  end


  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :body, :is_taken)
  end
end