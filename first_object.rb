Class Bird

  def set_name=(bird_name)
    @name = bird_name
  end

  def get_name
    return @name
  end

  def owner_name
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def tweet
    return "tweeeeeeeeeeeet!"
  end

end

my_bird = Bird.new
my_bird.set_name = "Pearly"
bird_name = my_bird.get_name
puts "#{bird_name} says #{bird_name.tweet} when she hears the dogs bark."
