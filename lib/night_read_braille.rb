require './lib/file_io'
require './lib/alphabet_hash'

class NightReadBraille
  attr_reader :input, :info, :to_translate

  def initialize
    @input = FileInput.new
    @info = input.read.chomp.strip
    @to_translate = AlphabetHash.new
  end

  def ready_to_write
    translated
  end

  def reversed(key)
    new_hash = to_translate.alphabet.invert
    new_hash[key]
  end

  def split_by_line
    current = info.split("\n")
    current.map! do |pair|
      pair.scan(/../)
    end
    current
  end

  def group_letters
    split_by_line.transpose
  end

  def translated
    translated_array = []
    group_letters.each do |letter|
      translated_array << reversed(letter)
    end
    translated_array.join("")
  end
end
