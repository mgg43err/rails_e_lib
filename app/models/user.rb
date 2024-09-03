class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  serialize :user_books, Array

  def get_books
    Book.where(is_taken: false)
  end

  def take_book(id)
    return "You can't take more than 2 books." if user_books.length >= 2
    book = Book.find_by(id: id)
    return "Book already taken." if book.is_taken
    book.update(is_taken: true)
    user_books << id
    save
    "Book taken successfully."
  end

  def return_book(id)
    book = Book.find_by(id: id)
    return "Book not found in your list." unless user_books.include?(id)
    book.update(is_taken: false)
    user_books.delete(id)
    save
    "Book returned successfully."
  end

  def my_books
    Book.where(id: user_books)
  end
end
