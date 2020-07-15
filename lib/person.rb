# your code goes here

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
end

def happiness
   if @happiness > 10
    @happiness = 10
   elsif @happiness < 0
    @happiness = 0
   else 
    @happiness
   end
end

def hygiene
    if @hygiene > 10
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    else
        @hygiene
    end
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

def get_paid (salary)
    @bank_account += salary
"all about the benjamins"
end


end