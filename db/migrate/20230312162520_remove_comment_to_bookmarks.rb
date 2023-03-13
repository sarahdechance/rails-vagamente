class RemoveCommentToBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :comment
  end
end
