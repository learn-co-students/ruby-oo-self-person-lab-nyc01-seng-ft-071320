# your code goes here
class Person

    attr_reader :name, :hygiene
    attr_accessor :happiness, :bank_account  

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else @hygiene = hygiene
        end
        @hygiene
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness
        end
        @happiness
    end

    
    def initialize(name, hygiene=8, happiness=8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
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
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end
end 