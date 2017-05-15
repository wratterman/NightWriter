require "./lib/file_io"
require 'pry'

class FileInput

  def
    message = ARGV[0]
    File.read(message)
  end

  def length
    message = ARGV[0]
    string = File.read(message)
    string.length
  end
end

class NightRead
  attr_reader :input
  attr_accessor :length

  def initialize
    @input = FileInput.new
  end

  # def encode_to_braille
  #   text = input.read
  #   braille = encode_to_braille(text)
  # end

  def print_message
    "You created 'braille.txt' that has #{file_length} characters!"
  end

  def file_length
    @input.length
  end
end

a = NightRead.new
puts a.print_message
# binding.pry
