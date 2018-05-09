require "minitest/autorun"
require "minitest/pride"
require "./lib/translator"

class TranslatorTest < Minitest::Test
  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_eng_to_morse
    translator = Translator.new("hello world")
    assert_equal "......-...-..--- .-----.-..-..-.." translator.eng_to_morse
  end
end
