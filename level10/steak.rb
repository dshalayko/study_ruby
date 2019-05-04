class Steak
  include Comparable
  attr_accessor :grade

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
  end
end
firt_steak = Steak.new
firt_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

puts firt_steak > second_steak
