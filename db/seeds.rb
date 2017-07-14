# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# [User, Subreddit, Post, Comment].each do |table|
#   ActiveRecord::Base.connection.execute("TRUNCATE #{table.table_name} CASCADE")
# end


# 1000.times do
#      User.create(
#         email: Faker::Internet.email,
#         password: Faker::HarryPotter.character,
#         username: Faker::Name.first_name,
#       ) 
# end 

# #  subreddit
# 100.times do
#   Subreddit.create(
#     title: Faker::Pokemon.name,
#     description: Faker::ChuckNorris.fact,
#     content_options: rand(2), # add ENUM
#     theme: Faker::RockBand.name,
#     public_private: rand(2), # add ENUM
#     user_id: rand(1..827)
#   )
#   end


#  posts *** after subreddits done ***
# 10000.times do
#   Post.create(
#     title: Faker::HarryPotter.character,
#     post_type: rand(2), # add ENUM
#     body: Faker::Lorem.paragraphs, # if type 0
#     media: Faker::Internet.url,
#     url: Faker::Internet.url,
#     subreddit_id: rand(1..100),
#     user_id: rand(1..827)
#   )
#   end


# #  messages
# 1000.times do
#   Message.create(
#     subject: Faker::Friends.location,
#     body: Faker::Lorem.paragraphs,
#     user_id: rand(1..827)
#   )
#   end

# 500.times do 
#     upvote = Commentdownvote.new
#     upvote.comment_id=(rand(1..100))
#     upvote.user_id=(rand(1..827))
#     upvote.save
#     end


# #   comments - need to add parent_comment
# 2000.times do
#   Comment.create(
#     body: Faker::ChuckNorris.fact,
#     post_id: rand(1..10000),
#     user_id: rand(1..827)
# )
#   end

# # ************* how do I seed joins *************
# #  message recipients
# # 1000.times do
# #   message_id
# # user_id

# #   friends
# 500.times do
#   Friend.create(
#     user_id: rand(1..827),
#     friend_id: rand(1..827)
#   )
# end


# #   savedcomments
# # comment_id
# # user_id

# #   savedposts
# # post_id
# # user_id

# #   subredditmods
# # subreddit_id
# # user_id
# # permissions
