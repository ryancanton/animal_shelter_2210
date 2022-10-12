class Shelter

  attr_reader :name, :capacity, :pets

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
  end

  def add_pet(pet)
    @pets.push(pet)
  end

  def call_pets()
    pet_calls = []

    @pets.each do |pet|
      pet_calls.push(pet + "!")
    end

    return pet_calls
  end

  def over_capacity?()
    if (@pets.length > @capacity)
      return true
    end

    return false
  end

  def adopt()
    if (@pets != [])
      pets.pop
    end
  end


end
