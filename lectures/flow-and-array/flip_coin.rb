computer_choice = ['cara', 'coroa'].sample

puts "cara ou coroa?"
user_choice = gets.chomp

# DRY
# Don't Repeat Yourself

# if computer_choice == user_choice
#   verb = "venceu"
#
#
#
# else
#   verb = "perdeu"
# end

# ONLY when IF and ELSE
# condition ? code_if_truthy : code_if_false_or_nil

verb = computer_choice == user_choice ? "venceu" : "perdeu"

puts "Você #{verb}!"
