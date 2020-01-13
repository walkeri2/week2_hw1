class CodeClanStudent

  def initialize(input_student_name, input_student_cohort,
                 input_student_talks, input_student_fav)
    @student_name = input_student_name
    @student_cohort = input_student_cohort
    @student_talks = input_student_talks
    @student_fav = input_student_fav
  end

  def get_student_name()
    return @student_name
  end

  def get_student_cohort()
    return @student_cohort
  end

  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_student_cohort(new_student_cohort)
    @student_cohort = new_student_cohort
  end

  def student_talks()
    return @student_talks
  end

  def student_fav()
    return "I love #{@student_fav}"
  end

end
