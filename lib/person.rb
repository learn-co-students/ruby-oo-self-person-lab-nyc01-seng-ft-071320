# your code goes here
class Person
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene
    @@all=[]
    def initialize(name)
        @bank_account = 25
         @happiness = 8
         @hygiene = 8
        @name = name
        @@all << self 

    end



    def name
        @name
    end
    def happiness
    @happiness.clamp(0,10)
    end 
    def hygiene
        @hygiene.clamp(0,10)
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
    
        'all about the benjamins'

    end 
    def take_bath
       @hygiene=8
       '♪ Rub-a-dub just relaxing in the tub ♫'
       

    end 
end
