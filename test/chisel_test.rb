require 'minitest/autorun'
require_relative '../lib/chisel'
require_relative '../lib/file_reader'

class ChiselTest < Minitest::Test

  def setup
    @chisel = Chisel.new
  end

  def test_read_from_file_returns_contents_of_a_file
    assert_equal String, @chisel.read_from_file.class
  end

  def test_output_to_a_file_writes_to_a_given_file
    @chisel.output_to_file("This really works!")
    file = File.open("test_contents_output.html")
    assert_equal "This really works!", file.readlines[0]
  end
  #this is also in filereader?

end
