# your code goes here

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    attr_writer 

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        # bank_account = 25, happiness, hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
            if @happiness > 10
                @happiness = 10
            elsif @happiness < 0
                @happiness = 0
            end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
            if @hygiene > 10
                @hygiene = 10
            elsif @hygiene < 0
                @hygiene = 0
            end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    
    def clean?
        if @hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == 'politics'
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            name.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end