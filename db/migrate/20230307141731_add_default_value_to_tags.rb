class AddDefaultValueToTags < ActiveRecord::Migration[7.0]
  def change
    change_column :tags, :category, :integer, :default => 0
  end
end
