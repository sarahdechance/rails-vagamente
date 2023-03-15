class ChangeColumnsBookmarkTags < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmark_tags, :rating
    remove_column :bookmark_tags, :comment

    add_column :bookmarks, :rating, :integer
    add_column :bookmarks, :comment, :text
  end
end
