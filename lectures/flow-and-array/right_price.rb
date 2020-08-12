computer_choice = [1, 2, 3, 4].sample

user_choice = 0

while computer_choice != user_choice
  puts "Escolhe um número entre 1 e 4"
  user_choice = gets.chomp.to_i
end

# um ou outro, estão funcionando da mesma forma

until computer_choice == user_choice
  puts "Escolhe um número entre 1 e 4"
  user_choice = gets.chomp.to_i
end
