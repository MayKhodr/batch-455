# Assignment operator
# Operador de Atribuição
name = "Ozzy Osbourne"

# Methods
# 1 ) Como se chama?
# 2 ) Quais são os parâmetros
#     que o método recebe?
#     Quais são os tipos esperados?
# 3 ) O quê o método retorna?

def full_name(first_name, last_name)
  # I expect them to be strings
  "#{first_name} #{last_name}"
  # return a string
end

puts full_name("Matheus", "Penchel")

puts full_name(14, 22)

def soma(x, y)
  x + y
end

puts soma(4, 10)
puts soma([1, 2, 3], nil)
