puts "Que horas são? (hora, me dê um número)"
hour = gets.chomp.to_i

# Dizer que estamos abertos se for
# entre 9 ~ 12 / 13 ~ 18

# && (and)
# || (or)

if (hour >= 9 && hour < 12) || (hour >= 13 && hour <= 18)
  puts "Estamos abertos!"
end
