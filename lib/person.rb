# your code goes here
# require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
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
end