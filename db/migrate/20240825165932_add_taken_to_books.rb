class AddTakenToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :taken, :boolean
  end
end
