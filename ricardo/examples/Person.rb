class Person
  attr_reader :name, :pets
  attr_reader :name

  def initialize(name, pets = [])
    @name = name
    @pets = pets
  end

  def append_pet(pet = nil)
    @pets.push(pet) if pet.is_a? Pet
  end
end
