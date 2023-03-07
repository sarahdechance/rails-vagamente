class RemoveProfiletoUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :profile
  end
end
