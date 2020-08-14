students      = ['Gabriella', 'Lourdes', 'Maique', 'Otoniel']
student_teams = ['Botafogo', 'Fluminense', 'Grêmio', 'América-RJ']

def print_students_and_their_teams(students, teams)
  students.each_with_index do |student, index|
    team = teams[index]
    puts "#{student} torce para #{team}"
  end
end

print_students_and_their_teams(students, student_teams)

# Concordam que é péssimo trabalhar assim?
# Com vários arrays independentes, que nós "linkamos" mentalmente
# pelo índice? Imagina 10 arrays, cada um com 10 mil elementos..

# Para atualizar um elemento ou deletar, poderia ficar problemático.

# Com hash, seria:

student_teams = {
  'Gabriella' => 'Botafogo',
  'Lourdes' => 'Fluminense',
  'Maique' => 'Grêmio',
  'Otoniel' => 'América-RJ',
  'Flavio' => ['Botafogo', 'Atlético-MG']
}

student_teams.each do |key, value|
  puts "#{key} torce para #{value}"
end

# Demais, hein??
