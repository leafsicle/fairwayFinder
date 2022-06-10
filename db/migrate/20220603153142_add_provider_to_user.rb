class AddProviderToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :provider, :string
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end
