class FixUserColumnName < ActiveRecord::Migration[7.0]
  def up
    rename_column :users, :address_locatity, :address_locality
  end

  def down
    rename_column :users, :address_locality, :address_locatity
  end    
end
