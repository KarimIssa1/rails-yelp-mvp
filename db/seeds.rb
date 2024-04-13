# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create!([
  { name: "The Fancy Fork", address: "123 Main St, Montreal", phone_number: "123-456-7890", category: "french" },
  { name: "Sushi Sushi", address: "456 Sushi Rd, Montreal", phone_number: "234-567-8901", category: "japanese" },
  { name: "Pasta Central", address: "789 Pasta Blvd, Montreal", phone_number: "345-678-9012", category: "italian" },
  { name: "Dragon Wok", address: "012 China Town, Montreal", phone_number: "456-789-0123", category: "chinese" },
  { name: "Waffle Kingdom", address: "345 Waffle Way, Montreal", phone_number: "567-890-1234", category: "belgian" }
])
