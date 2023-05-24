class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  else
    begin 
      raise PartnerError
    rescue PartnerError => PartnerError
      puts error.message
    end
  end


end

class PartnerError < StandardError
  def message
    "you must give the get_married method an argument of an instance of the person class!"
  end
end


beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




