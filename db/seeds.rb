require 'net/http'
uri = URI("https://bgg-json.azurewebsites.net/collection/edwalter")
@boardgamestring = Net::HTTP.get(uri)
games = JSON.parse(@boardgamestring)
games.each do |each_game|
  Game.create!(title: each_game["name"], thumbnail: each_game["thumbnail"], image: each_game["image"], player_count_min: each_game["minPlayers"], player_count_max: each_game["maxPlayers"], playing_time: each_game["playingTime"])
end

50.times do
  user_info = {
    email: Faker::Internet.email,
    username: Faker::Internet.user_name,
    password: "password",
  }
  User.create!(user_info)
end

1000.times do
  ownership_info = {
    game_id: rand(1..100),
    owner_id: rand(1..15)
  }
  Ownership.create!(ownership_info)
end
