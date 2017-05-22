# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:firstname => "Joe", :lastname => "Jim", :email => "joe@example.com", :is_admin => true)
Topic.create(:title => "First Topic", :body => "Body of first topic", :user => User.first)
Comment.create(:body => "First comment", :user => User.first , :topic => Topic.first )