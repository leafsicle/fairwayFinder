Then we may have a directory to keep the .csv files. Let’s say it is in the db/data/users.csv.
In this case, I also prefer to use an isolated file to keep the “CSV to model mapping”, like db/user_seeding.rb .

In the db/user_seeding.rb we can create the mapping from CSV to our model and create records one by one with the help of CSV class in Ruby. This logic will be encapsulated in a method and be called in the db/seed.rb file.

require 'csv'
require_relative './data/users.csv'
def seed_users
csv_file_path = '/[project_path]/db/data/users.csv'
puts 'Seeding users from #{csv_file_path}...'
f = File.new(csv_file_path, 'r')
csv = CSV.new(f)
headers = csv.shift

csv.each do |row|
user_information = {
name: row[0],
age: row[1]
}
inv = User.create(user_information)
end
puts 'Seeding users from #{csv_file_path} done.'
end

When you are ready with the db/user_seeding.rb, you can call it in the db/seed.rb

require_relative './user_seeding'

puts "Seeding..."

seed_users
