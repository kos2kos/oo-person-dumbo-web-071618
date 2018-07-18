# your code goes here
require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  def initialize (name, accounts, happiness, hygiene)
    @name = name
    @accounts = accounts
    @happiness = happiness
    @hygiene = hygiene
  end

  #change the information methods
  def accounts=(int=25)
    @accounts = int
  end

  def happiness=(points=8)
    array = (0..10).to_a
    if array.include? points
      @happiness = points
    else
      puts "This number is not valid"
    end
  end

  def hygiene=(points=8)
    array = (0..10).to_a
    if array.include? points
      @hygiene = points
    else
      puts "This number is not valid"
    end
  end

  #output the information
  def accounts
    @accounts
  end

  def name
    @name
  end

  # def happiness
  #   @happiness
  # end

  # def hygiene
  #   @hygiene
  # end

  def clean?
    if hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @accounts += salary
    "all about the benjamins"
  end

  def take_bath
    if @hygiene < 10
      @hygiene += 1
    else
      @hygiene = 10
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    if @happiness <= 8
      @happiness += 2
    else
      @happiness = 10
    end

    if @hygiene >= 3
      @hygiene -= 3
    else
      @hygiene = 0
    end
     "♪ another one bites the dust ♫"
   end
   def call_friend(person)
     person.happiness=(person.happiness + 1)
     if self.happiness >= 9
       self.happiness=(10)
     else
       self.happiness=(self.happiness + 1)
     end
     "Hi #{person.name}! It's #{self.name}. How are you?"
   end

end

Johnny_Rocket = Person.new("Johnny_Rocket", 25, 10, 5)
puts Johnny_Rocket
puts Johnny_Rocket.happiness
puts Johnny_Rocket.hygiene
puts Johnny_Rocket.name
puts Johnny_Rocket.accounts


puts Johnny_Rocket.work_out
puts Johnny_Rocket.work_out
puts Johnny_Rocket.work_out


puts Johnny_Rocket.take_bath
puts Johnny_Rocket.take_bath
puts Johnny_Rocket.take_bath

puts Johnny_Rocket.happy?
puts Johnny_Rocket.clean?

puts Johnny_Rocket.hygiene
puts Johnny_Rocket.happiness
