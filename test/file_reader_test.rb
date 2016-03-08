require 'minitest/autorun'
require_relative '../lib/chisel'
require_relative '../lib/file_reader'

class FileReaderTest < Minitest::Test
  def setup
    @chisel = Chisel.new
  end

  # def test_read_input_file_can_take_ARGV0
  #   @chisel.read_from_file
  #   assert_equal "hello", ARGV[0]
  # end

  # def test_read_input_file_can_extract_contents
  #   @chisel.read_input_file
  #   assert_equal String, text.class
  # end

  # def test_outputting_to_a_file_outputs_to_ARGV1
  #   assert_equal "filepath", ARGV[1]
  # end

  def test_outputting_to_a_file_writes_to_a_given_file
    @chisel.output_to_file("This really works!")
    file = File.open("test_contents_output.html")
    assert_equal "This really works!", file.readlines[0]
  end

end
