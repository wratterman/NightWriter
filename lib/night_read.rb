require 'pry'
require "./lib/file_io"
require "./lib/alphabet_hash"


class NightRead
  attr_reader :input, :to_translate, :info, :translated

  def initialize
    @input = FileInput.new
    @to_translate = AlphabetHash.new
    @info = input.read.chomp.strip
    @translated = translated
  end

  # def encode_to_braille
  #   text = input.read
  #   braille = encode_to_braille(text)
  # end

  def print_message
    "You created 'braille.txt' that has #{file_length} characters!"
  end

  def file_length
    input.length
  end

  # def braille_alphabet
  #   translated = []
  #   to_translate.alphabet.each do |letter|
  #     translated << to_translate.alphabet[letter]
  #   end
  #   translated
  # end

  def translated_string
    translated = []
    info.each_char do |letter|
      translated << to_translate.alphabet[letter]
    end
    @translated = translated.compact
  end

  def seperating_to_first_row
    first_row = []
    translated.each do |letter|
      first_row << letter[0]
    end
    first_row
  end

  def seperating_to_second_row
    second_row = []
    translated.each do |letter|
      second_row << letter[1]
    end
    second_row
  end

  def seperating_to_third_row
    third_row = []
    translated.each do |letter|
      third_row << letter[2]
    end
    third_row
  end

  def formatted_translation
    print seperating_to_first_row.join("") + "\n" + seperating_to_second_row.join("") + "\n" + seperating_to_third_row.join("")
  end
end

a = NightRead.new
puts a.print_message
