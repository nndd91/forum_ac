# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(:firstname => "Joe", :lastname => "Jim", :email => "joe@example.com", :is_admin => true)
# Topic.create(:title => "First Topic", :body => "Body of first topic", :user => User.first)
# Comment.create(:body => "First comment", :user => User.first , :topic => Topic.first )

# Clear DB
Comment.delete_all
Topic.delete_all
User.delete_all


# Create 2 users
user_joe = User.create(firstname: "Joe", lastname: "Doe", email: "joe.doe@gmail.com")
user_emily = User.create(firstname: "Emily", lastname: "Blunt", email: "emily.blunt@gmail.com")


# Create 3 topics for Joe
topic_cars = Topic.create(title: "Cars", body: "topic about cars...", user: user_joe)
topic_food = Topic.create(title: "Food", body: "topic about food...", user: user_joe)
topic_arch = Topic.create(title: "Architecture", body: "topic about architecture...", user: user_joe)


# Create 3 topics for Emily
topic_flow = Topic.create(title: "Flowers", body: "topic about flowers...", user: user_emily)
topic_baki = Topic.create(title: "Baking", body: "topic about baking...", user: user_emily)
topic_shop = Topic.create(title: "Shopping", body: "topic about shopping...", user: user_emily)


# Create comments on Flowers
Comment.create(body: "are those flowers yours??", topic: topic_flow, user: user_joe)
Comment.create(body: "yes, they are mine!!", topic: topic_flow, user: user_emily)
Comment.create(body: "cool!!", topic: topic_flow, user: user_joe)


# Create comments on Shopping
Comment.create(body: "where did you buy this?", topic: topic_shop, user: user_joe)
Comment.create(body: "ou, it was at Orchard!", topic: topic_shop, user: user_emily)