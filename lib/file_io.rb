# class FileInput
#
#   def input_file_reader
#     message = File.open(ARGV[0], 'r')
#     message_array = []
#     message.each_line do |character|
#       message_array << character
#     end
#     #input_converter(message)
#     message.close
#     to_convert = message_array.join(" ")
#   end
# end

class FileOutput

  def output_file_writer(translation)
    output = File.open(ARGV[1], 'w')
    output.write(translation)
    output.close
    # output_file_length_calculator(translation)
    translation.chars! do |character|
      character
    end

    output_file_length =  translation.inject(:+)

    puts "You created #{ARGV[1]} that has #{output_file_length} characters!"
  end

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
