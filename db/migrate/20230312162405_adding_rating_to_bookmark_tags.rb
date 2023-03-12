class AddingRatingToBookmarkTags < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmark_tags, :rating, :integer
  end
end
