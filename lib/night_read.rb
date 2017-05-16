require "./lib/file_io"
require "./lib/alphabet_hash"

class NightRead
  attr_reader :input, :to_translate, :info, :translated, :file_length

  def initialize
    @input = FileInput.new
    @file_length = input.length
    @to_translate = AlphabetHash.new
    @info = input.read.chomp.strip
    @translated = translated
  end

  def formatted_translation
    translated_string
    returned = first_row.join("") + "\n" + second_row.join("") + "\n" + third_row.join("")
  end

  def translated_string
    translated = []
    info.each_char do |letter|
      translated << to_translate.alphabet[letter]
    end
    @translated = translated.compact
  end

  def first_row
    first_row = []
    translated.each do |letter|
      first_row << letter[0]
    end
    first_row
  end

  def second_row
    second_row = []
    translated.each do |letter|
      second_row << letter[1]
    end
    second_row
  end

  def third_row
    third_row = []
    translated.each do |letter|
      third_row << letter[2]
    end
    third_row
  end
end
