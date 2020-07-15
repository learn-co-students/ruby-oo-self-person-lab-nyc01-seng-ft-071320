require 'pry'
class Person
    attr_accessor :bank_acc, :hyg, :hap

    def initialize(name)
     @name = name
     @bank_acc = 25
     @hyg = 8
     @hap = 8
    end

    # if hyg/hap > 10. hyg = 10. if  # if hyg/hap < 0. hyg = 0

    def name
        @name
    end

    def clean?
        if @hyg > 7
            return true
        else
            return false
        end
    end
    
    def happy?
        if @hap > 7
            return true
        else
            return false
    end

    def take_bath
        @hyg += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @hap += 2
        @hyg -= 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend

    end

    def start_conversation
    end
binding.pry
end
