class RemoveNullToProfileIdToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :profile_id, :bigint, null: true 
  end
end
