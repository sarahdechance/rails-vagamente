class RemoveRatingToBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :rating
  end
end
