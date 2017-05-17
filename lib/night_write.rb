require "./lib/file_io"
require "./lib/alphabet_hash"
require "./lib/night_read"
require "./lib/night_read_braille"

class NightWrite

  attr_reader :reader, :braille_reader

  def initialize
    @reader = NightRead.new
    @braille_reader = NightReadBraille.new
  end

  def encode_to_braille
    braille_text = reader.formatted_translation

    File.write(ARGV[1], braille_text)
    puts print_message
  end

  def encode_to_english
    english_text = braille_reader.ready_to_write

    File.write(ARGV[1], english_text)
    puts print_message
  end

  def print_message
    "You created #{ARGV[1]} that has #{reader.file_length} characters!"
  end
end

a = NightWrite.new

if ARGV[0] == 'braille.txt'
  a.encode_to_english
else
  a.encode_to_braille
end
