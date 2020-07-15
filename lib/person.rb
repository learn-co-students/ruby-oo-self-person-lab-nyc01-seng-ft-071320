require 'pry'

# your code goes here
class Person
    #each instance of Person should be able to remember their name
    attr_accessor :name, :bank_account, :happiness

    def initialize(name, bank_account = 25, happiness = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
    end

    # def bank_account

    # end



end

person1 = Person.new("Ian")
binding.pry