# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num

        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

def hygiene=(num)
    @hygiene = num

    @hygiene = 10 if @hygiene > 10 
    @hygiene = 0 if @hygiene < 0
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
    return 'all about the benjamins'
end

def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out
    self.hygiene += -3
    self.happiness += 2
    return '♪ another one bites the dust ♫'
end

def call_friend(friend)
    [friend, self].each do |element|
        element.happiness += 3
    end
       return "Hi #{friend.name}! It's #{self.name}. How are you?"      
end

def start_conversation(friend, topic)
    objects = [self, friend]

    if topic == "politics"
        objects.each do |elements|
            elements.happiness -= 2
    end
end

    if topic == "politics"
        return "blah blah partisan blah lobbyist"
    end

    if topic == "weather"
        objects.each do |elements|
            elements.happiness += 1
        end
    end
    
    if topic == "weather"
        return 'blah blah sun blah rain'
    end

    if topic ==! "weather" || "politics"
        return "blah blah blah blah blah"
    end

end

end
