class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.integer :user_type_id
      t.integer :home_course_id
      t.float :handicap
      t.string :street_address
      t.string :address_locality
      t.string :address_region
      t.string :postal_code
      t.decimal :latitude 
      t.decimal :longitude
      t.string :avatar_url
      t.string :uid
      t.string :full_name
      t.string :provider
      t.string :
      t.timestamps
    end
  end
end
