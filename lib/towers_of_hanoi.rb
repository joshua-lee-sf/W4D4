# class TowersOfHanoi
class TowersofHanoi
  attr_reader :stacks, :max_height
  def initialize(max_height)
    @max_height = max_height
    @stacks = Array.new(3) { Array.new }

    (1..max_height).each do |i|
      @stacks[0] <<i
    end

  end

  def move(start, destination)
    disk = self.stacks[start].shift
    self.stacks[destination].unshift(disk)
    self.stacks
  end

  def won?
  end

  def valid_move?
  end
end
