require_relative 'room'
require 'csv'

class RoomRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []

    load_csv
  end

  def all
    @rooms
  end

  def find(room_id)
    # Find é parecido com select,
    # a diferença é que retorna 1 elemento ao invés
    # de um array com todos elementos que batem o nosso
    # critério especificado dentro do bloco.
    @rooms.find { |room| room.id == room_id }
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
      row[:id]             = row[:id].to_i
      row[:number_of_beds] = row[:number_of_beds].to_i

      @rooms << Room.new(row)
    end
  end

end

# repo = RoomRepository.new('rooms.csv')
# repo.all.each do |room|
#   puts "#{room.id}: #{room.number_of_beds} - #{room.door_number}"
# end
