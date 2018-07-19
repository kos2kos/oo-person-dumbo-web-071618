class Person
  
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account 
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  #happiness will take in an added point and return the propper value
  
  def happiness=(points)
    point_value =  points
    if point_value > 10
      @happiness = 10
    elsif point_value < 0 
      @happiness = 0 
    else
      @happiness = point_value
    end
  end
  
def hygiene=(points)
    point_value =  points
    if point_value > 10
      @hygiene = 10
    elsif point_value < 0
      @hygiene = 0
    else
      @hygiene = point_value
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygine += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
   self.happiness += 2
   self.hygine += -3
   "♪ Rub-a-dub just relaxing in the tub ♫"

  def call_friend(friend)
    happiness=(3)
    friend.happiness=(3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
 end


   def start_conversation(person, topic)
    if topic == "politics"
      person.happiness=(-1)
      happiness=(-1)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness=(1)
      happiness=(1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
  
end

