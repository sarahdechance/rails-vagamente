class ChangePresenceToBookmark < ActiveRecord::Migration[7.0]
  def change
    change_column :bookmarks, :trip_id, :bigint, null: true
    change_column :bookmarks, :rating, :integer, null: true
  end
end
