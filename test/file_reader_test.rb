require 'minitest/autorun'
require_relative '../lib/chisel'
require_relative '../lib/file_reader'

class FileReaderTest < Minitest::Test
  def setup
    @chisel = Chisel.new
  end

  # def test_read_input_file_can_take_ARGV0
  #   assert_equal "filepath", ARGV[0]
  # end

  # def test_read_input_file_can_extract_contents
  #   @chisel.read_input_file
  #   assert_equal String, text.class
  # end

  # def test_outputting_to_a_file_outputs_to_ARGV1
  #   assert_equal "filepath", ARGV[1]
  # end

  # def test_outputting_to_a_file_outputs_content_to_a_file
  #   @chisel.outputting_to_file
  #   assert_equal String, outputting.close
  # end


end
