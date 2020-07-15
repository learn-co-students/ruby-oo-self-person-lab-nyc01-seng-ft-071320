# your code goes here
class Person

    attr_reader :name
    attr_accessor :happiness, :bank_account, :hygiene 
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
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
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 


    

end 