class AddingCommentToBookmarkTags < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmark_tags, :comment, :text
  end
end
