# how ruby recognizes an array: []

# CRUD => Create / Read / Update / Delete

# Creating an array

black_sabbath = ['Tony Iommi', 'Geezer Butler', 'Bill Ward', 'Matheus']
# posições
# index               0              1              2            3

# puts black_sabbath.size   # => 4
# puts black_sabbath.count  # => 4
# puts black_sabbath.length # => 4

# READ an element

puts black_sabbath[2] # => 'Bill Ward'

# CREATE an element

# black_sabbath.push('Ozzy Osbourne')
black_sabbath << 'Ozzy Osbourne'

# UPDATE an element

black_sabbath[3] = "Robert Plant"

# preenche com nil todas posições vazias até o índice fornecido
# black_sabbath[15] = "Claudia Leite"

puts "Acabamos de atualizar o array com o Robert plant"
puts black_sabbath

# DELETE

black_sabbath.delete_at(3)
puts "Acabamos de atualizar o array removendo o Robert plant"
puts black_sabbath

# método delete vai deletar TODOS os elementos QUE SÃO "Ozzy Osbourne"
black_sabbath.delete("Ozzy Osbourne")
puts "Acabamos de atualizar o array removendo o Ozzy"
puts black_sabbath
