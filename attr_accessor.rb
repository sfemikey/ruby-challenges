class Bird

  attr_accessor :name, :owner_name

  def tweets
    return "tweeeeeeeet"
  end

end

my_bird = Bird.new
my_bird.name= "Pearly"
bird_name = my_bird.name
puts "#{bird_name} says #{my_bird.tweets} when she hear the dogs bark."

puts my_bird.inspect
