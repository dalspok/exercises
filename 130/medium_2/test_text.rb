require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open("text_for_text_rb.txt", "r")
    @changing_letter = "a"
    @new_letter = "e"
    @text = @file.read
    @text_object = Text.new(@text)
  end

  def test_swap
    new_text = @text.gsub(@changing_letter, @new_letter)
    assert_equal(new_text, @text_object.swap(@changing_letter, @new_letter))
  end

  def test_word_count
    num_of_words = @text.split.count
    assert_equal(num_of_words, @text_object.word_count)
  end

  def teardown
    @file.close
  end

end