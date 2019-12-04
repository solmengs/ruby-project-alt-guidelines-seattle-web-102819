Player.destroy_all
Game.destroy_all
Team.destroy_all



 g1 = Game.create(location: "Seatac", attendee: rand(10..100))
 g2 = Game.create(location: "Seattle", attendee: rand(10..100))
 g3 = Game.create(location: "Kent", attendee: rand(10..100))
 g4 = Game.create(location: "Seattle", attendee: rand(10..100))
 g5 = Game.create(location: "Renton", attendee: rand(10..100))
 g6 = Game.create(location: "Tacoma", attendee: rand(10..100))
 g7 = Game.create(location: "Tacoma", attendee: rand(10..100))
 g8 = Game.create(location: "Renton", attendee: rand(10..100))
 g9 = Game.create(location: "Kent", attendee: rand(10..100))
 g10 = Game.create(location: "Tacoma", attendee: rand(10..100))
 g11 = Game.create(location: "Seattle", attendee: rand(10..100))
 g12 = Game.create(location: "Renton", attendee: rand(10..100))
 g12 = Game.create(location: "Seatac", attendee: rand(10..100))
 g13 = Game.create(location: "Seatac", attendee: rand(10..100))
 g14 = Game.create(location: "Renton", attendee: rand(10..100))
 g15 = Game.create(location: "Renton", attendee: rand(10..100))


p1 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p2 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p3 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p4 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p5 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p6 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p7 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p8 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p9 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p10 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p11 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p12 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p13 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p14 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p15 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p16 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p17 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p18 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 p20 = Player.create(name: Faker::Name.unique.name, age: rand(15..60))
 
 teams = ["Arsenal", "Chelsea", "liverpool", "Manchister City", "Manchister United"]
 
 Team.create(name: teams.sample, point: rand(1..100), game_id: g2.id, player_id: p1.id)
Team.create(name: teams.sample, point: rand(1..100), game_id: g1.id, player_id: p2.id)
Team.create(name: teams.sample, point: rand(1..100), game_id: g3.id, player_id: p3.id)
Team.create(name: teams.sample, point: rand(1..100), game_id: g4.id, player_id: p4.id)
Team.create(name: teams.sample, point: rand(1..100), game_id: g5.id, player_id: p5.id)
Team.create(name: teams.sample, point: rand(1..100), game_id: g6.id, player_id: p6.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g7.id, player_id: p7.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g8.id, player_id: p8.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g8.id, player_id: p9.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g9.id, player_id: p10.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g10.id, player_id: p11.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g11.id, player_id: p12.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g12.id, player_id: p13.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g13.id, player_id: p14.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g14.id, player_id: p15.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g15.id, player_id: p16.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g16.id, player_id: p17.id)
 Team.create(name: teams.sample, point: rand(1..100), game_id: g17.id, player_id: p18.id)







# Team.destroy_all
 
# 100.times do |index|
#   Team.create!(name: Faker::Football.team,
#                 point: Faker::Number.within(range = 1.00..100.00),
#                 review: Faker::Lorem.paragraph)
# end


# Game.destroy_all
 
# 100.times do |index|
#   Game.create!(location: Faker::Address.full_address ,
#                 attendee: Faker::Number.within(range = 100.00..10000.00),
                
# end


# Tournament.destroy_all
 
# 100.times do |index|
#     Tournament.create!(team_id: Faker::Address.full_address. ,
#     game_id: Faker::Number.within(range = 100.00..10000.00),
                
# end
