class AddCoulmnBookIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column  :favorites, :book_id, :integer
    remove_column  :favorites, :content, :stri
  end
end
