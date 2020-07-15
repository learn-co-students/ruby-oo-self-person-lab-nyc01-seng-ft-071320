# your code goes here
require "pry"

class Person
    
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happy_points = 8
        @hygiene_points = 8
    end

    def name
        @name
    end

    def happiness
        @happy_points
    end

    def happiness=(happy)
        if happy >=0  && happy <=10
            @happy_points = happy
        elsif happy > 10
            @happy_points = 10
        else
            @happy_points = 0
        end
    end

    def hygiene
        @hygiene_points
    end

    def hygiene=(clean)
        if clean >=0  && clean <=10
            @hygiene_points = clean
        elsif clean > 10
            @hygiene_points = 10
        else
            @hygiene_points = 0
        end
    end

    def happy?
        @happy_points > 7 ? true : false
    end

    def clean?
        @hygiene_points > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene =(@hygiene_points+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        #binding.pry
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end



end