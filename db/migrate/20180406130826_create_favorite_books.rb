class CreateFavoriteBooks < ActiveRecord::Migration[5.1]
  def change
  	drop_table :favorite_books
    create_table :favorite_books do |t|
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end
end
