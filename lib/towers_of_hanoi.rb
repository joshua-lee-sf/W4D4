# class TowersOfHanoi
class TowersofHanoi

  def initialize(max_height)
    @stacks = Stacks.new(max_height)
  end

  def move
    @popped = @stacks.pop
    @stack
  end

  def won?
  end

  def valid_move?
  end
end

class Stacks

  attr_accessor :stacks
  def initialize(max_height)
    @max_height = max_height
    max_height.times do
      @stacks = Array.new(max_height)
    end
    end
  end

end