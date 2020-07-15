# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    def initialize(name)
        @name = name
        bank_account = 25
        @bank_account = bank_account
        happiness = 8
        @happiness = happiness
        hygiene = 8
        @hygiene = hygiene
    end

    def happiness=(score)
        # @happiness = happiness
        if score >= 10
            @happiness = 10
        elsif score < 0
            @happiness = 0
        else 
            @happiness = score
        end
    end

    def hygiene=(score)
        if score >= 10
            @hygiene = 10
        elsif score < 0
            @hygiene = 0
        else 
            @hygiene = score
        end
    end

    def take_bath  
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
        end 

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        if salary >= 100
            "all about the benjamins"
        end
    end

    def work_out 
    self.hygiene=(@hygiene -3)
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
    end 


end


# binding.pry
# "hi"