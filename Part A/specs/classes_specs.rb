require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../classes')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

  def setup
    @code_clan_student = CodeClanStudent.new('Iain', 'G17', 'I can talk', 'Ruby')
  end

  def test_student_name
    assert_equal('Iain', @code_clan_student.get_student_name)
  end

  def test_student_cohort
    assert_equal('G17', @code_clan_student.get_student_cohort)
  end

  def test_set_student_name
    @code_clan_student.set_student_name('Jack')
    assert_equal('Jack', @code_clan_student.get_student_name)
  end

  def test_set_student_cohort
    @code_clan_student.set_student_cohort('G18')
    assert_equal('G18', @code_clan_student.get_student_cohort)
  end

  def test_student_talks
    assert_equal('I can talk', @code_clan_student.student_talks)
  end

  def test_student_fav()

    assert_equal('I love Ruby', @code_clan_student.student_fav)
  end

end
