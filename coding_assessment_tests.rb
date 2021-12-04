require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'coding_assessment'

Minitest::Reporters.use!

class SubstringFinderTest < Minitest::Test
  # above_below tests
  def test_above_below_correct_output
    output = CodingAssesment.above_below([10, 20, 30, 40, 50], 35)

    assert_equal output, { above: 2, below: 3 }
  end

  def test_above_below_argument_error_raised
    exception = assert_raises ArgumentError do
      CodingAssesment.above_below("test", 35)
    end

		assert_equal("Incorrect data type passed for Array argument.", exception.message)

    exception_2 = assert_raises ArgumentError do
      CodingAssesment.above_below([10, 20, 30, 40, 50], "test")
    end

		assert_equal("Incorrect data type passed for Integer argument.", exception_2.message)

    exception_3 = assert_raises ArgumentError do
      CodingAssesment.above_below("test", "test")
    end

    assert_equal("Incorrect data type passed for both Array and Integer arguments.", exception_3.message)
  end

  # string_rotation tests
  def test_string_rotation_correct_output
    output = CodingAssesment.string_rotation("Hello World", 4)

    assert_equal output, "orldHello W"
  end

  def test_string_rotation_argument_error_raised
    exception = assert_raises ArgumentError do
      CodingAssesment.string_rotation(35, 3)
    end

		assert_equal("Incorrect data type passed for String argument.", exception.message)

    exception_2 = assert_raises ArgumentError do
      CodingAssesment.string_rotation("test", "test")
    end

		assert_equal("Incorrect data type passed for Integer argument.", exception_2.message)

    exception_3 = assert_raises ArgumentError do
      CodingAssesment.string_rotation(35, [3, 4, 5, 6])
    end

    assert_equal("Incorrect data type passed for both String and Integer arguments.", exception_3.message)
  end

end
