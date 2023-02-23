
class Array

  def my_uniq
    new_array = []
    self.each do |ele|
      new_array << ele if !new_array.include?(ele)
    end
    new_array
  end
end