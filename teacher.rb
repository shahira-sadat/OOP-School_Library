require "./person.rb"

class Teacher < Person
  def initialize(name, age = "unknown", parent_permission = true, specialization)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @specialization = specialization
  end

  def can_use_services?
      true
  end
end

@specialization