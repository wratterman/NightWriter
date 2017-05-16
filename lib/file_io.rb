require "./lib/night_read"

class FileInput

  def read
    message = ARGV[0]
    File.read(message)
  end

  def length
    message = ARGV[0]
    string = File.read(message)
    string.length
  end
end

class FileOutput
  attr_reader :reader

  def initialize
    @reader = NightRead.new
  end

  def write(text)
    new_message = File.open(braille.txt, "w")
    new_message.write(text)
    new_message.close
    print_message
  end

    # output = File.open(ARGV[1], 'w')
    # output.write(translation)
    # output.close
    # # output_file_length_calculator(translation)
    # translation.chars! do |character|
    #   character
    # end
    #
    # output_file_length =  translation.inject(:+)
    #
    # puts "You created #{ARGV[1]} that has #{output_file_length} characters!"


  # def input_converter(message)
  #   message = File.open(ARGV[0], 'r')
  #   message_array = []
  #   message.each_line do |character|
  #     message_array << character
  #   end
  # end

  # def output_file_length_calculator(translation)
  #   translation.chars! do |character|
  #     character
  #   end
  #
  #   output_file_length =  translation.inject(:+)
  # end
end
