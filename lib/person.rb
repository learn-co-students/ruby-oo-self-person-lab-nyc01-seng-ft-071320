# your code goes here

class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        # @hygiene = hygiene
        # bank_account = 25, happiness, hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
        # happiness.include?  
        # @happiness = (0..10).include?(happiness)
        # 0..10 happiness can't go below 0 or over 10
    end

    
    






end