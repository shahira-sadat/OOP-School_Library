require_relative 'person'
# Class Student inherites person
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
