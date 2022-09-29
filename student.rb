require_relative 'person'
# Class Student inherites person
class Student < Person
  attr_reader :classroom
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    self.classroom = classroom
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.students.push(self) unless @classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
