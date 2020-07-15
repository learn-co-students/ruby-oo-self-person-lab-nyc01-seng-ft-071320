class Person

    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name
    
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness.between(0, 10)
        @hygiene = hygiene.between(0, 10)
    end

    def happiness
        @happiness        
    end

    def happiness=(num)
        @happiness
    end

    def hygiene
        @hygiene
    end
    
    def hygiene=(num)
        @hygiene
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
end