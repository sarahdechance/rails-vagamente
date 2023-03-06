class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :profile, :integer
  end
end
