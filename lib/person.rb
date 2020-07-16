require 'pry'
class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name
    @@all = []
    def initialize(name)
     @name = name
     @bank_account = 25
     @hygiene = 8
     @happiness = 8
     @@all << self
    end 

    def bank_account
        @bank_account
    end
    def hygiene
        self.hygiene_limiter
        @hygiene
    end

    def happiness
        self.happiness_limiter
        @happiness
    end
    
    def happiness_limiter
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end
    def hygiene_limiter
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end
    
    def hygiene=(input)
        @hygiene = input
        self.hygiene_limiter
    end
    def happiness=(input)
        @happiness = input
        self.happiness_limiter
    end
    
    def work_out
        self.happiness = @happiness+2
        self.hygiene = @hygiene-3
        self.happiness_limiter
        self.hygiene_limiter
        p "♪ another one bites the dust ♫"
    end

    def take_bath
        self.hygiene = @hygiene+4
        self.hygiene_limiter
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end


    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
    def call(caller, callee)
        self.happiness = @happiness+3
        self.happiness_limiter
        p "Hi #{caller.name}! It's #{callee.name}. How are you?"
    end
    
    def call_friend(friend)
        self.call(self, friend)
        friend.call(friend, self)
    end
    def topic(arg)
        self.happiness = @happiness+arg
    end
    def start_conversation(friend, topics)
        if topics == "politics"
            self.topic(-2)
            friend.topic(-2)
            return "blah blah partisan blah lobbyist"
        elsif topics == "weather"
            self.topic(1)
            friend.topic(1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

#binding.pry
end
greg = Person.new("Greg")