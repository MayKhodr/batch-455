require_relative 'martial_art'

jiu_jitsu = MartialArt.new(
  "Jiu Jitsu",
  ["Faixa Branca", "Faixa Preta"],
  ["Crucifixo", "Chave de braço"],
  "Kimono",
  "Helio Grace"
)

puts jiu_jitsu.name
puts jiu_jitsu.number_of_moves
puts jiu_jitsu.complexity

jiu_jitsu.name = "Judo"

puts jiu_jitsu.name
