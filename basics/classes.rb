# ------------------------------ Classes ------------------------------
class Person
  @@people_count = 0
  def initialize(name, age)
    # ------------------------------- instance variables -------------------------------
    # we use @ before a variable to signify that it's an instance variable
    # this means the variable is attached to the instance of the class
    @name = name
    @age = age

    # -------------------------------- class variables -------------------------------
    # class variables are similar to instance variables, but they belong to the class itself rather than to the instance of a class
    # these will always start with two @'s

    # -------------------------------- global variables -------------------------------
    # global variables are declared in two ways: just define them outside of any method or class or with a $ in front of it

    # increment people_count
    @@people_count += 1
  end

  def self.number_of_instances
    return @@people_count
  end
end

caro = Person.new("Caro", 23)

puts "Number of instances, #{Person.number_of_instances}"

# ------------------------------ Inheritance ------------------------------
class DerivedClass < BaseClass
  # some code
end
# derived class is the new one you're making and the base class is the class the new class inherits from
# read "<" as "inherits from"

# to directly access the base class methods or attributes, you can use the "super" keyword
class DerivedClass < BaseClass
  def initialize(name, age)
    super(optional args)
  end
end

# ------------------------------ Modules ------------------------------
# Modules are a way to group methods and constants together
module MyModule
  def my_method

# one of the main purposes is to separate methods and costants into named spaces
#   - also called namespacing
# the double colon used in ruby is called the scope resolution operator
#   - by doing Math::PI, ruby will know to look inside the math module to get the PI

# require methods
#  - require is a method that will load a file
#  - we just do "require 'date'" or whatever other module we need

# include methods
#  - include is a method that will include a module into a class
#  - we just do "include 'module'" inside the class

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

# "include" mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods)
# "extend" mixes a module's methods in at the class leve
#   - a class itself can use the methods as opposed to instances of the class

# ------------------------------ Example ------------------------------
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
  end
end

class Email < Message
  def initialize(subject)
    @subject = subject
  end
end

# ------------------------------ Virtual Computer ------------------------------
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}

    @@user[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file was created"
  end

  # class method to grab users
  def Computer.get_users
    return @@users
  end
end


# ------------------------------ Inheritance ------------------------------
=begin
  - public methods
    - allows for an interface with the rest of the program
  - private methods
    - these are for your classes to do their own work undisturbed; they are unreachable
  - methods are public by default in ruby
  - we can make it clearer by adding "public" before our method definitions

  - we can use attr_reader to access a variable and attr_writer to change it
  - to read and also write a particular variable, you can use attr_accessor
=end


class Dog
  attr_reader :name
=begin
  attr_reader is the same as:
  def name
      @name
  end
=end
  attr_writer :age
=begin
  attr_writer is the same as:
  def age=(value)
    @age = value
  end
=end

  def initialize(name, age)
    @name = name
    @age = age
  end

  public
  def bark
    puts "Woof!"
  end

  private
  def id
    @id_number = 12345
  end
end
