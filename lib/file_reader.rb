require 'pry'

class FileReader

  def read_input_file
    #takes ARGV[0] and reads its contents
  text = File.open(ARGV[0], "r")
  contents = text.read
  text.close
  contents
  end

  def outputting_to_file(output_formatted)
    #when given content, will output to ARGV[1]
  outputting = File.open(ARGV[1], "w")
  outputting.write(output_formatted)
  outputting.close
  end

end
