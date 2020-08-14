# Hashes
# Dictionary-like data structure
# Chave - Valor ( Key - Value )

# Toda chave de uma hash deve ser única!

cities = {
  "Rio de Janeiro" => {
    "Pais" => "Brasil",
    "População" => 7_000_000,
    "Time mais charmoso" => "Botafogo",
    "Monumento" => "Cristo Redentor"
  },
  "São Paulo" => {
    "Pais" => "Brasil",
    "População" => 20_000_000,
    "Time mais charmoso" => "Botafogo-SP",
    "Monumento" => "Beco do Batman"
  }
}

# READING A HASH

# Sintaxe: nome_da_hash[chave]

cities["Rio de Janeiro"] # => retornou a hash vinculada à chave "Rio de Janeiro"
puts cities["Rio de Janeiro"]["Time mais charmoso"]
puts cities["São Paulo"]["Monumento"]

puts "População RJ: #{cities["Rio de Janeiro"]["População"]};\n População SP: #{cities["São Paulo"]["População"]}"

# CREATING A NEW KEY-VALUE PAIR

# Foi mal o erro de Geografia ae, minha gente bahiana!! :'(

cities["Salvador"] = {
  "Pais" => "Brasil",
  "População" => 10_000_000,
  "Time mais charmoso" => "Bahia",
  "Monumento" => "Farol da Barra"
}

puts cities["Salvador"]["Monumento"]

# UPDATE A VALUE

cities["Rio de Janeiro"]["População"] = 5_000_000

puts cities["Rio de Janeiro"]["População"]

# DELETE A VALUE

cities.delete("Rio de Janeiro") # Deletou todo o valor (que era uma hash),
                                # associado à chave "Rio de Janeiro"

# CUSTOM METHODS OF HASH

cities.key?("Rio de Janeiro") # => returns true if key exists, false if not
cities.keys # => returns an array with all the keys
cities.values # => returns an array with all the values
