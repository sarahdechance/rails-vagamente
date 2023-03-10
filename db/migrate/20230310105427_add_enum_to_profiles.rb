class AddEnumToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :category, :integer
  end
end
