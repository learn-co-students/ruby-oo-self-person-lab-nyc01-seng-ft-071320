require 'pry'
# your code goes here
class Person
    # attr_writer :happiness, 
    attr_reader :name 
    attr_accessor :happiness, :bank_account
    
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
    end
    def hygiene
        @hygiene
    end
    #-------
    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else 
            @hygiene = hygiene
        end
    end
    #-------
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
    end
    #-------
    def bank_account
        return @bank_account
    end
    #-------
    def happy?
        if @happiness > 7
            return true
        end
        return false
    end
    #-------
    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end
    #-------
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    #-------
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #-------
    def work_out
        self.hygiene -= 3
        
        self.happiness += 2
        
        return "♪ another one bites the dust ♫"
    end
    #-------
    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        return "Hi #{name.name}! It's #{self.name}. How are you?"
    end
    #-------
    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end
        if topic == "weather"
            self.happiness += 1
            name.happiness += 1
            return "blah blah sun blah rain"
        end
        if topic != "politics" && topic != "weather"
            return "blah blah blah blah blah"
        end
    end
    kanye = Person.new("kanye")
    kanye.take_bath
end