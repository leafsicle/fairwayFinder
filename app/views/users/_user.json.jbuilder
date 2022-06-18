json.extract! user, :id, :first_name, :last_name, :username, :email, :handicap, :street_address, :address_locatity, :address_region, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
