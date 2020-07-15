# your code goes here

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


end