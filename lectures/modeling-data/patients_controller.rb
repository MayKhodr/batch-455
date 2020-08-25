class PatientsController

  def inititalize()
  end

  def create
    name = @view.ask_for_patient_name
    disease = @view.ask_for_patient_disease

    patient = Patient.new(name: name, disease: disease)

    @repositorio.add(patient)
  end

end
