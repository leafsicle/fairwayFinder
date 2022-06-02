class RemoveUserTypeFromUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :integer
    remove_column :users, :user_type_id

    drop_table :user_types
  end
end
