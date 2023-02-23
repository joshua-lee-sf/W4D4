
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

  def my_transpose
    new_matrix = Array.new(self[0].length) {Array.new(self.length)} 

    self.each_with_index do |sub_array, row|
      sub_array.each_with_index do |ele, col|
        new_matrix[col][row] = ele
      end
    end
    new_matrix
  end
  
end
