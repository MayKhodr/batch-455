# Array
# Composto de elementos em posições (index)
# Lemos (e atualizamos) pela posição (index)

# Hash
# Composto de pares de chave-valor
# Lemos (e atualizamos, e deletamos) pela chave

# O que preferem?

# Isso:

[["Rio", 7_000_000, "Maraca"], ["SP", 20_000_000, "Morumbi"]]

# Ou isso?

cities = {
  "Rio" => {
    "population" => 7_000_000,
    "monument" => "Maraca"
  },
  "SP" => {
    "population" => 20_000_000,
    "monument" => "Morumbi"
  }
}
