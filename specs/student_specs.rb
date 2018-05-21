require("minitest/autorun")
require("minitest/rg")

require_relative("../student")


class TestStudent< Minitest::Test

  def test_name
   student = Student.new("Tara", "G6")
    assert_equal("Tara", student.name)
  end

  def test_cohort
   student = Student.new("Tara", "G6")
    assert_equal("G6", student.cohort)
  end

  def test_set_name
    student = Student.new("Tara", "G6")
    student.set_name("Tara mck")
    assert_equal("Tara mck", student.name)
  end

  def test_set_cohort
    student = Student.new("Tara", "G6")
    student.set_cohort("E6")
    assert_equal("E6", student.cohort)
  end

  def test_check_string
    student = Student.new("Tara", "G6")
    assert_equal("I can talk!", student.talk("I can talk!"))
  end

  def test_favourite_language
    student = Student.new("Tara", "G6")
    fave_language = student.say_favourite_language("Ruby")
    assert_equal("You love Ruby!",fave_language)
  end
end
