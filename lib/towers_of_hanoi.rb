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
    if self.valid_move?(start,destination)
      disk = self.stacks[start].shift
      self.stacks[destination].unshift(disk)
      self.stacks
    else
      return "not valid!"
    end
  end

  def won?
  end

  def valid_move?(start, destination)
    if self.stacks[destination].empty?
      return true
    else
      (self.stacks[start][0] > self.stacks[destination][0])
    end
  end
end
