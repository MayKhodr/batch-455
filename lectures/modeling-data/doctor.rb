class Doctor

  attr_reader :id, :specialty, :name, :crm

  def initialize(attributes = {})
    @id        = attributes[:id] # é diferente de attributes["id"]
    @specialty = attributes[:specialty]
    @name      = attributes[:name]
    @crm       = attributes[:crm]
  end

end

tex = Doctor.new(name: "Dr. Tex", specialty: "Neurologist")
