class ModifyTypeNameToPlaces < ActiveRecord::Migration[7.0]
  def change
    rename_column :places, :type, :genre
  end
end
