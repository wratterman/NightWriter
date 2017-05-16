require "./lib/file_io"
require "./lib/alphabet_hash"
require "./lib/night_read"

class NightWrite

  attr_reader :reader

  def initialize
    @reader = NightRead.new
  end

  def encode_to_braille
    braille_text = reader.formatted_translation

    File.write(ARGV[1], braille_text)
    puts print_message
  end

  def print_message
    "You created #{ARGV[1]} that has #{reader.file_length} characters!"
  end
end

a = NightWrite.new
a.encode_to_braille
