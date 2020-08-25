require_relative 'patient'
require_relative 'room_repository'
require 'csv'
require 'byebug'

class PatientRepository

  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @room_repository = room_repository
    @patients = []

    load_csv
  end

  def all
    @patients
  end

  def add(patient)
    # id é sequencial, e não se repete!!
    next_id = @patients.empty? ? 1 : @patients.last.id + 1
    patient.id = next_id

    @patients << patient

    save_csv
  end

  private
  def save_csv
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      csv << ['id','name','disease','cured','room_id']

      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.disease, patient.cured?, patient.room.id]
      end
    end
  end

  def load_csv
    csv_options = {
      col_sep: ',',
      quote_char: '"',
      headers: :first_row,
      header_converters: :symbol
    }

    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id]    = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      row[:room]  = @room_repository.find(row[:room_id].to_i)

      @patients << Patient.new(row)
    end
  end

end


room_repo = RoomRepository.new('rooms.csv')

repo = PatientRepository.new('patients.csv', room_repo)
repo.all.each do |patient|
  puts "#{patient.name} está internado no quarto #{patient.room.door_number}"
end

pedro = Patient.new(name: "Pedro", disease: "Febre alvinegra", room: room_repo.all.last)
repo.add(pedro)
