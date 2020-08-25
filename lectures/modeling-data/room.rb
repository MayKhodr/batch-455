require_relative 'patient'

class Room

  attr_reader :patients, :door_number, :id, :number_of_beds

  def initialize(attributes = {})
    @id             = attributes[:id]
    @number_of_beds = attributes[:number_of_beds] || 1
    @door_number    = attributes[:door_number]
    @patients       = attributes[:patients] || []
  end

  def full?
    @number_of_beds <= @patients.size
  end

  # Método de instância
  # Então estamos no contexto de uma instância de Room
  def add_patient(patient)
    if full?
      raise Exception, "The room is sealed, no more patients!"
    else
      @patients << patient
      # self é a própria instância
      patient.room = self
    end
  end
end

# room = Room.new(number_of_beds: 1, door_number: "102")
# puts room.patients.size

# ozzy = Patient.new(name: "Ozzy Osbourne", disease: "Intoxicação alimentar")
# puts ozzy.cured?

# room.add_patient(ozzy)

# puts room.patients.size

# room.patients.each_with_index do |patient, index|
#   puts "#{index + 1}: #{patient.name}"
# end

# puts ozzy.room.door_number

# richards = Patient.new(name: "Keith Richards", disease: "Silêncio")

# room.add_patient(richards)
