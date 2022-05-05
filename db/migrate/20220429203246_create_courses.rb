class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.integer :hole_count
      t.boolean :membership
      t.string :phone
      t.string :website_url
      t.string :scorecard_url
      t.integer :hour_open
      t.integer :hour_close
      t.boolean :driving_range
      t.boolean :putting_green
      t.boolean :chipping_area
      t.boolean :practice_bunker
      t.boolean :riding_cart
      t.boolean :push_cart
      t.boolean :pro_shop
      t.boolean :club_rental
      t.boolean :caddie_services
      t.boolean :lessons
      t.boolean :locker_room_onsite
      t.boolean :shower_onsite
      t.boolean :lodging_onsite
      t.boolean :clubfitting
      t.boolean :punched_greens
      t.boolean :sanded_greens
      t.string :street_address
      t.string :address_locality
      t.string :address_region
      t.string :postal_code

      t.timestamps
    end
  end
end
