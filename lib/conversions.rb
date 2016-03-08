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

  def checking_for_unordered_lists
    checking_for_lists = contents_split_by_line
    lists = checking_for_lists.map.with_index do |line, index|
      if line.start_with?("* ")
        line.sub!("* ", "<li>")
        "#{line}</li>"
      else
        line
      end
    end
  end

  def replacing_headers
    checking_for_unordered_lists.map do |line|
      counting_headers(line)
    end
  end

  def counting_headers(line)
    count = line.count("#")
    if count > 0
      line.sub!("#" * count, "<h#{count}>")
      "#{line}</h#{count}>"
    else
      "<p>#{line}</p>"
    end
  end

  def strong
    split_by_strong = replacing_headers.join.split("**")
    split_by_strong.map.with_index do |line, index|
      if index.odd?
        "<strong>#{line}</strong>"
      else
        line
      end
    end
  end

  def emphasis
    split_by_emphasis = strong.join.split("*")
    split_by_emphasis.map.with_index do |line, index|
      if index.odd?
        "<em>#{line}</em>"
      else
        line
      end
    end
  end

  def altered_contents
    emphasis.join
  end
end
