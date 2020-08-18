require 'csv'

filepath    = 'data/beers.csv'
# EXEMPLOS DE LEITURA:

# .foreach é um loop
CSV.foreach(filepath) do |row|
  puts "#{row[0]} - #{row[1]} - #{row[2]}"
end

# Com opções!

# Com essas opções, não imprime o cabeçalho (primeira linha)
# e nos permite ler do row como se fosse uma hash, não um array
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# .foreach é um loop
CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['Name']} - #{row['Appearance']} - #{row['Origin']}"
end

# EXEMPLOS DE ESCRITA:

csv_options = { col_sep: ',', quote_char: '"', force_quotes: true }

# .open NÃO é um loop
# wb é a operação para apagar o arquivo e escrever do zero
CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ["Name","Appearance","Origin"]
  csv << ["Edelweiss","White","Austria"]
  csv << ["Gulden Draak","Dark","Belgium"]
end

# .open NÃO é um loop
# a é para adicionar elementos ao fim do arquivo, sem sobrescrevê-lo
CSV.open(filepath, 'a', csv_options) do |csv|
  csv << ["Heineken","Lager","Netherlands"]
end
