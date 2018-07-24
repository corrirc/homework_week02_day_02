class Bear

  attr_reader :name, :stomach, :type

  def initialize(name, stomach)
    @name = name
    @stomach = []
    @type = type
  end

  def eats_fish(river, fish)
    @stomach.push(fish)
    river.remove_fish(fish)
  end

  def bear_type()
    return "Grizzly"
  end

  def bear_roar()
    return "ROAR!"
  end


end
