# your code goes here
# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene, :friend
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
      if @happiness > 10
        @happiness = 10
      elsif @happiness.between?(0,10)
        @happiness
      else
        @happiness < 0
        @happiness = 0
      end
    end

    def hygiene
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene.between?(0,10)
        @hygiene
      else
        @hygiene < 0
        @hygiene = 0
      end
    end

    def happy?
        if @happiness > 7
            return true
        else 
            false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary

        # binding.pry
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      
      friend.happiness += 3
      self.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
      #binding.pry
    end

    def start_conversation(person, topic)
      
      
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else #!= "politics" || "weather"
        "blah blah blah blah blah"

      end 
    end

end