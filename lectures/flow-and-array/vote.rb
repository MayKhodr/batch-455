puts "What's your age?"
age = gets.chomp.to_i

condition = age >= 18

# puts condition.class # TrueClass

# CTRL / -> comentar linhas de codigo

# if !condition
#   puts "You can't vote"
# end

# unless condition
#   puts "You can't vote"
# end

if condition
  puts "You can vote"
else # nada escrito aqui, só o else
  puts "You can't vote"
end
