class OrangeTree

  attr_reader :height, :age, :fruits, :life_cicle

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @life_cicle = true # Quer dizer que a árvore está viva
  end

  def one_year_passes!
    @age += 1

    if @age >= 0 && @age <= 5
      @height += 1
    end
  end

end


laranjeira = OrangeTree.new

puts laranjeira.height

laranjeira.height = 10 # eu não deveria poder fazer isso!!

puts laranjeira.age

laranjeira.one_year_passes!
laranjeira.one_year_passes!
laranjeira.one_year_passes!

puts laranjeira.age
puts laranjeira.height
