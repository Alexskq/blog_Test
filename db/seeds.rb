# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


user = User.where(email: "alex@mail.com").first_or_initialize
user.update!(password: "password", password_confirmation: "password")

BlogPost.destroy_all

100.times do |i|
  blog_post = BlogPost.where(title: "Article #{i}").first_or_initialize
   blog_post.update(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. #{i}", published_at: Time.current)
end



