class AddAuthorAndIsTakenToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
    add_column :books, :is_taken, :boolean
  end
end
