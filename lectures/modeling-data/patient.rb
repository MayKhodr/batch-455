class Patient

  attr_reader :name, :disease
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id      = attributes[:id]
    @name    = attributes[:name]
    @disease = attributes[:disease]
    @cured   = attributes[:cured] || false
    @room    = attributes[:room]
  end

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end

end
