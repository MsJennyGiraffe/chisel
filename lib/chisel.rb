require 'pry'
require_relative 'file_reader'
require_relative 'conversions'


class Chisel

  def read_from_file
    contents = FileReader.new.read_input_file
  end

  def output_to_file(output_formatted)
    output = FileReader.new.outputting_to_file(output_formatted)
  end
end

c = Chisel.new
c.output_to_file(Conversions.new.altered_contents)
