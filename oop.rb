class Ferret

  def set_name=(ferret_name)
    @name = ferret_name
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

  def squeal
    return "Squeeeee"
  end

end

# @ - instance variable - because it belongs to THIS instance of this object. (@name - stores it's name)

my_ferret = Ferret.new  # this create a new instance of the ferret class and saves the new ferret object to a variable my_ferret.
my_ferret.set_name= "Maya"
ferret_name = my_ferret.get_name
puts "#{ferret_name} says #{my_ferret.squeal}."
