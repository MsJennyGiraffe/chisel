require 'minitest/autorun'
require '../lib/chisel'
require_relative '../lib/file_reader'

class ConversionsTest < Minitest::Test

  def setup
    @chisel = Chisel.new
    @conversions = Conversions.new.emphasis.join
  end

  def test_contents_split_by_line_splits_string_contents_by_new_line
  skip
    assert_equal "contents", @conversions.contents_split_by_line
  end
  #it works, but how should I test it's doing it properly without looking shitty?

  def test_replacing_headers_changes_octothropes_into_header_tags
    headers = @conversions.replacing_headers.join
    assert headers.include?("<h1>")
    assert headers.include?("</h1>")

  end

  def test_replacing_headers_inserts_a_closing_tag
    headers = @conversions.replacing_headers.join
    assert headers.include?("<h2>")
    assert headers.include?("</h2>")
  end

  def test_replaces_double_asterics_with_strong_tags
    @conversions.strong
  end

  def test_replaces_single_asterics_with_emphasis_tags

  end
end
