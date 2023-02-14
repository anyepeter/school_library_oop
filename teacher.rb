require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def recieve_items
    {
      class: 'Teacher',
        age: @age,
        name: @name,
        specialization: @specialization
    }
  end
end
