# your code goes here
require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account, happiness, hygiene) 
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    # binding.pry

    def name(name)
        @name = name
    end

    def bank_account(bank_account)
        @bank_account = bank_account
    end

    def happiness(happiness)
        @happiness = happiness
    end

    def hygiene(hygiene)
        @hygiene = hygiene
    end

end

name = Person.new("name1", "faf","faf","faf") 
# binding.pry