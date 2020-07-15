require 'pry'

# your code goes here
class Person
    #each instance of Person should be able to remember their name
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # def bank_account

    # end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end




end

person1 = Person.new("Ian")
# binding.pry