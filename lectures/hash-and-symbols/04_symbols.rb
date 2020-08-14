# Usando strings como chaves

cities = {
  "Rio de Janeiro" => {
    "population" => 7_000_000,
    "monument" => "Cristo Redentor"
  },
  "São Paulo" => {
    "population" => 20_000_000,
    "monument" => "Beco do Batman"
  }
}

# Usando símbolos como chaves (sintaxe antiga)

cities = {
  "Rio de Janeiro" => {
    :population => 7_000_000,
    :monument => "Cristo Redentor"
  },
  "São Paulo" => {
    :population => 20_000_000,
    :monument => "Beco do Batman"
  }
}

# Usando símbolos como chaves (sintaxe moderna)

cities = {
  "Rio de Janeiro" => {
    population: 7_000_000,
    monument: "Cristo Redentor"
  },
  "São Paulo" => {
    population: 20_000_000,
    monuments: "Beco do Batman"
  }
}

cities["Rio de Janeiro"][:population]
cities["Rio de Janeiro"][:population]

# Ctrl / comenta todas as linhas selecionadas (ou descomenta)
# ou Command, para MAC

# rio = {
#   :name => "Rio de Janeiro",
#   :population => 700000,
#   :monument => "Engenhão"
# }

# rio[:name]
# rio[:population]
# rio[:monument]

