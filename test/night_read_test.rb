require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_read"

class NightReadTest < Minitest::Test

  def test_can_it_run_a_state_of_class_NightRead
    a = NightRead.new
    expected = NightRead
    actual = a.class

    assert_equal expected, actual
  end

  def test_is_input_an_inherent_quality_of_NightRead_with_value
    a = NightRead.new
    expected = nil
    actual = a.input

    refute_equal expected, actual
  end

  def test_is_to_translate_an_inherent_quality_of_NightRead_with_value
    a = NightRead.new
    expected = nil
    actual = a.to_translate

    refute_equal expected, actual
  end

  def test_is_info_an_inherent_quality_of_NightRead_with_value
    a = NightRead.new
    expected = nil
    actual = a.info

    refute_equal expected, actual
  end

  def test_is_tranlated_nil_initially
    a = NightRead.new
    expected = nil
    actual = a.translated

    assert_nil expected, actual
  end

  # def test_does_it_print_the_correct_message_to_terminal
  #   a = NightRead.new
  #   expected = "You created 'braille.txt' that has 6 characters!"
  #   actual = a.print_message
  #
  #   assert_equal expected, actual
  # end

  def test_is_input_a_state_of_FileInput_class_from_file_io
    a = NightRead.new
    expected = FileInput
    actual = a.input.class

    assert_equal expected, actual
  end

  def test_is_input_pulling_the_length_of_the_internal_text_information
    a = NightRead.new
    expected = 6
    actual = a.file_length

    assert_equal expected, actual
  end

  def test_do_the_components_of_message_save_in_NightRead
    a = NightRead.new
    expected = "tacos"
    actual = a.info

    assert_equal expected, actual
  end

  def test_does_translate_return_an_array_with_the_correct_number_of_key_value_pairs
    a = NightRead.new
    expected = 5
    actual = a.translated_string.length

    assert_equal expected, actual
  end

  def test_does_it_translate_the_string_from_date_file
    a = NightRead.new
    expected = [[".0", "00", "0."], ["0.", "..", ".."], ["00", "..", ".."], ["0.", ".0", "0."], [".0", "0.", "0."]]
    actual = a.translated_string

    assert_equal expected, actual
  end

  def test_does_it_sort_the_first_index_of_translated_string_to_top_row
    a = NightRead.new
    a.translated_string
    expected = [".0", "0.", "00", "0.", ".0"]
    actual = a.first_row

    assert_equal expected, actual
  end

  def test_does_it_sort_the_second_index_of_translated_string_to_middle_row
    a = NightRead.new
    a.translated_string
    expected = ["00", "..", "..", ".0", "0."]
    actual = a.second_row

    assert_equal expected, actual
  end

  def test_does_it_sort_the_third_index_of_translated_string_to_bottom_row
    a = NightRead.new
    a.translated_string
    expected = ["0.", "..", "..", "0.", "0."]
    actual = a.third_row

    assert_equal expected, actual
  end

  def test_does_it_print_to_terimal_in_correct_format
    a = NightRead.new
    a.translated_string
    expected = ".00.000..0\n00.....00.\n0.....0.0."
    actual = a.formatted_translation

    assert_equal expected, actual
  end
end
