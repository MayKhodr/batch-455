require_relative 'doctor'
require 'csv'
require 'byebug'

class DoctorRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @doctors = []

    load_csv
  end

  def all
    @doctors
  end

  private
  def load_csv
    csv_options = {
      col_sep: ',',
      quote_char: '"',
      headers: :first_row,
      header_converters: :symbol
    }

    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i

      @doctors << Doctor.new(row)
    end
  end

end

repo = DoctorRepository.new('doctors.csv')
repo.all.each do |doctor|
  puts "#{doctor.id}: #{doctor.name} - #{doctor.specialty} - #{doctor.crm}"
end
