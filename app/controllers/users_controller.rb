class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @available_books = @user.get_books
    @my_books = @user.my_books
  end

  def take_book
    @user = User.find(params[:id])
    message = @user.take_book(params[:book_id])
    redirect_to @user, notice: message
  end

  def return_book
    @user = User.find(params[:id])
    message = @user.return_book(params[:book_id])
    redirect_to @user, notice: message
  end
end
