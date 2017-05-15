require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_read"
require "./lib/alphabet_hash"


class NightReadTest < Minitest::Test

  def test_can_it_run_a_state_of_class_NightRead
    a = NightRead.new
    expected = NightRead
    actual = a.class

    assert_equal expected, actual
  end

  def test_does_it_print_the_correct_message_to_terminal
    skip
    a = NightRead.new
    expected = "You created 'braille.txt' that has 47 characters!"
    actual = a.print_message

    assert_equal expected, actual
  end

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

  def test_does_alphabet_a_return_the_braille_version_of_blind_people_a
    skip
    a = NightRead.new
    expected = ["0.", "..", ".."]
    actual = a.translate

    assert_equal expected, actual
  end

  def test_does_translate_return_an_array_with_the_correct_number_of_key_value_pairs
    skip
    a = NightRead.new
    expected = 68
    actual = a.translate.length

    assert_equal expected, actual
  end

  def test_does_it_translate_the_string_from_date_file
    skip
    a = NightRead.new
    expected = [[".0", "00", "0."], ["0.", "..", ".."], ["00", "..", ".."], ["0.", ".0", "0."], [".0", "0.", "0."]]
    actual = a.translated_string

    assert_equal expected, actual
  end

  def test_does_it_split_into_3_vertical_sections_per_letter
    a = NightRead.new
    a.translated_string
    expected = "0.....0.0."
    actual = a.formatted_translation

    assert_equal expected, actual
  end
end
