class AddDefaultValueToBookmarks < ActiveRecord::Migration[7.0]
  def change
    change_column :bookmarks, :status, :integer, :default => 0
  end
end
