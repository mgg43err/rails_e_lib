class AddUserBooksToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_books, :text
  end
end
