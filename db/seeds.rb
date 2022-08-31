# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Stage.destroy_all

puts "Creating stages..."
reiki = {title: "Stage Reiki", date: Date.today , participants: 5 , price: 16 , place: "MJC de Palence", description: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Architecto quibusdam voluptate excepturi quasi omnis nisi, dicta est deleniti labore neque inventore officiis ullam explicabo debitis culpa magni perferendis cupiditate amet!" }
reichu = {title: "Stage Reiki", date: Date.today , participants: 5 , price: 16 , place: "MJC de Palence", description:"Lorem ipsum, dolor sit amet consectetur adipisicing elit. Architecto quibusdam voluptate excepturi quasi omnis nisi, dicta est deleniti labore neque inventore officiis ullam explicabo debitis culpa magni perferendis cupiditate amet!" }


[reiki, reichu].each do |attributes|
  stage = Stage.create!(attributes)
  puts "Created #{stage.title}"
end
puts "Finished!"
