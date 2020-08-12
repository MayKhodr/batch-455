puts "Select a valid mode [read|write|exit]"
action = gets.chomp

# if action == "read"
#   puts "Entering read mode..."
# elsif action == "write"
#   puts "Entering write mode..."
# elsif action == "exit"
#   puts "Exiting the software. Bye bye"
# else
#   puts "Invalid action."
# end

# switch case statement

# DRYamos o nosso código

# comparações de IGUALDADE, sempre!
# não pode outros tipos de comparação
# por ex: não pode >=
case action
when "read" then puts "Entering read mode..."
when "write" then puts "Entering write mode..."
when "exit" then puts "Entering exit mode..."
else
  puts "Invalid action."
end
