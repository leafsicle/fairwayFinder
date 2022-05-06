json.extract! user, :id, :first_name, :last_name, :username, :email, :user_type_id, :handicap, :street_address, :address_locatity, :address_region, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
