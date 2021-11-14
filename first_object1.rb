class Bird

  def set_name=(bird_name)
    @name = bird_name
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

  def tweets
    return "tweeeeeeeet"
  end

end

my_bird = Bird.new
my_bird.set_name= "Pearly"
bird_name = my_bird.get_name
puts "#{bird_name} says #{my_bird.tweets} when she hear the dogs bark."

puts my_bird.inspect
