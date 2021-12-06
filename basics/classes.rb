# ------------------------------ Classes ------------------------------
class Person
  def initialize(name, age)
    # we use @ before a variable to signify that it's an instance variable
    # this means the variable is attached to the instance of the class
    @name = name
    @age = age
  end
end

caro = Person.new("Caro", 23)
puts caro.name
