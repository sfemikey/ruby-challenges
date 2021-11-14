class Pet

  def set_name=(name)
    @name = name
  end


  def get_name
    return @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

end

class Bird < Pet

  def tweets
    return "tweeeeeeeet"
  end

end

class Reptile < Pet

  def hiss
    return "hisssssss"
  end

end

class Dog < Pet

  def bark
    return "arf arf arf"
  end

end

my_bird = Bird.new
my_bird.set_name= "Pearly"
bird_name = my_bird.get_name

my_reptile = Reptile.new
my_reptile.set_name= "Beardie"
reptile_name = my_reptile.get_name

my_dog = Dog.new
my_dog.set_name= "Sugar"
dog_name = my_dog.get_name

puts "#{bird_name} says #{my_bird.tweets} when she hear the dogs bark,
#{reptile_name} says #{my_reptile.hiss} to #{dog_name},
#{dog_name} says #{my_dog.bark} to #{reptile_name} and #{bird_name}."

puts my_bird.inspect
puts my_reptile.inspect
puts my_dog.inspect
