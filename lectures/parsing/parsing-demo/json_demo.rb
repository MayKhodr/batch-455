require 'json'

filepath    = 'data/beers.json'

# LEITURA

# Lemos o conteúdo do arquivo como uma String
serialized_json = File.read(filepath)
# puts serialized_json.class
# puts serialized_json
# Difícil trabalhar com essa String!

# Então parseamos ela com a biblioteca JSON e criamos uma hash
hash = JSON.parse(serialized_json)

puts hash.class
puts hash['title']
puts hash['beers'][2]['origin']

# ESCRITA

# deletamos uma cerveja da hash para ver se funcionava
# a escrita!
hash['beers'].delete_at(0)

# .open NÃO é um loop
File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(hash))
end

# Como deu 10h30 e ainda temos bastante
# material pela frente, fizemos uma pausa
# até 10h40. Estejam aqui 10h40, por favor :D
