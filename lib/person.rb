# your code goes here
class Person
    
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    attr_writer 

    def initialize (name) 
        @name =name
        @bank_account=25
        @hygiene=8
        @happiness=8
    end

    def happiness
        @happiness =10 if @happiness>10
        @happiness =0 if @happiness<0
        @happiness
    end

    def hygiene
        @hygiene =10 if @hygiene>10
        @hygiene =0 if @hygiene<0
        @hygiene
    end

    def happy?
        happiness>7
    end

    def clean?
        hygiene>7
    end

    def get_paid(salary)
        @bank_account=@bank_account+salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        clean?
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3 
        self.happiness+=2
        clean?
        happy?
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness+=3
        happy?
        friend.happiness=friend.happiness+3
        friend.happy?
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        topic=topic
        speak=""
        speak="blah blah partisan blah lobbyist" if topic == "politics"
        speak="blah blah sun blah rain" if topic = "weather"
        speak="blah blah blah blah blah" if topic != "politics" && topic != "weather"
        speak
    end

end