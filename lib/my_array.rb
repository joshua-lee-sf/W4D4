
class Array

  def my_uniq
    new_array = []
    self.each do |ele|
      new_array << ele if !new_array.include?(ele)
    end
    new_array
  end

  def two_sum
    pairs = []
    (0...self.length).each do |i|
      (0...self.length).each do |j|
        if i < j
          pairs << [i,j] if self[i] + self[j] == 0
        end
      end
    end
    pairs
  end
  
end
