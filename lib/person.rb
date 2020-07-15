# your code goes here
require "pry"

class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happy_points = 8
        @hygiene_points = 8
    end

    attr_accessor :bank_account

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
        self.hygiene =(@hygiene_points -3)
        self.happiness =(@happy_points +2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness =(@happy_points +3)
        friend.happiness =(@happy_points +3)
        #binding.pry
        "Hi Penelope! It's Felix. How are you?"
    end



end