class AddUserToHolePerformances < ActiveRecord::Migration[7.0]
  def change
    add_column :hole_performances, :user_id, :integer
    add_index :hole_performances, :user_id
  end
end
