class AddFavoriteToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :favorite, :boolean, default: false
  end
end
