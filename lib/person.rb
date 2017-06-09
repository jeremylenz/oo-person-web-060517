class Person

attr_reader :name, :happiness, :hygiene
# attr_writer
attr_accessor :bank_account


def initialize(name)
  @name = name
  @bank_account = 25.00
  @happiness = 8
  @hygiene = 8

end

def happiness=(new_index)
  new_index > 10 ? @happiness = 10 : @happiness = new_index
  if new_index <= 0 then
    @happiness = 0
  end
end

def hygiene=(new_index)
  if new_index > 10 then
    new_index = 10
  end
  if new_index < 0 then
    new_index = 0
  end
  @hygiene = new_index
end

def happy?
  @happiness > 7
end

def clean?
  @hygiene > 7
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(who_you_gonna_call)
  self.happiness += 3
  who_you_gonna_call.happiness += 3
  "Hi #{who_you_gonna_call.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)

  case topic
  when "politics"
    self.happiness -= 2
    person.happiness -= 2
    return "blah blah partisan blah lobbyist"
  when "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end






end # of Person class
