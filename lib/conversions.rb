require 'pry'
require_relative 'file_reader'


class Conversions
  def initialize
    @contents = FileReader.new.read_input_file
  end

  def contents
    @contents
  end

  def contents_split_by_line
    contents_split_by_line = @contents.split("\n")
  end

  def replacing_headers
    contents_split_by_line.map do |line|
      count = line.count("#")
      if count > 0
        line.sub!("#" * count, "<h#{count}>")
        "#{line}</h#{count}>"
      else
        line
      end
    end
  end

  def altered_contents
    replacing_headers
  end
end
