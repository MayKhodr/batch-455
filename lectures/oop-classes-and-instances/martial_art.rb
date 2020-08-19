class MartialArt

  # attr_reader :name é um atalho para
  # def name
  #   @name
  # end
  # mesmíssima coisa!!

  # attr_writer :name é um atalho para
  # def name=(name)
  #   @name = name
  # end
  # mesmíssima coisa!!

  attr_reader :creator
  attr_accessor :name, :levels, :move, :uniform

  # attr_accessor :name
  # é o mesmo que:
  # attr_reader :name
  # e
  # attr_writer :name

  # quando chamamos Classe.new, o método que é executado
  # é o método initialize
  # O nome deste método é sagrado!!!!
  # Se tiver erro de digitação, não vai funcionar
  # OBS: Conceitualmente, este é o método Construtor
  def initialize(name, levels, moves, uniform=nil, creator=nil)
    @name = name
    @levels = levels
    @moves = moves
    @uniform = uniform
    @creator = creator
  end

  def number_of_moves
    @moves.size
  end

  def complexity
    value = 0

    @moves.each do |move|
      value += 10
    end

    @levels.each do |level|
      value += 1
    end

    value += 100 unless @creator.nil?

    value
  end

  def name=(new_name)
    @name = new_name
  end

  def levels=(new_level)
    @levels = new_level
  end
end
