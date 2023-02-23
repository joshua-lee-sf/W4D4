require "rspec"
require "my_array"

describe Array do
  subject(:my_array) {[1,2,1,3,3]}
  subject(:two_array) {[1,2,3,-3,-1,-2]}
  subject(:my_matrix) {[[1],[2],[3],[4]]}

  describe "#my_uniq" do
    it "should be applied to an array" do
      expect{my_array.my_uniq}.not_to raise_error
    end

    it "should return an array only unique elements" do
      expect(my_array.my_uniq).to eq([1,2,3])
    end

    it "should return a new array" do
      expect(my_array.my_uniq.object_id).not_to be(my_array.object_id)
    end
  end

  describe "#two_sum" do
    it "should be applied to an array" do
      expect{two_array.two_sum}.not_to raise_error
    end

    it "should return indices of pairs that sum to zero" do
      expect([5,-5].two_sum).to eq ([[0,1]])
      expect([-2,3,-3,2].two_sum).to eq([[0,3], [1,2]])
      expect(two_array.two_sum).to eq([[0,4],[1,5],[2,3]])
    end

    it "should return a new array" do
      expect(two_array.two_sum.object_id).not_to be(two_array.object_id)
    end
  end

  describe "#my_transpose" do
    it "should be applied to a 2D array" do
      expect{my_matrix.my_transpose}.not_to raise_error
    end

    it "should transpose the given array" do
      expect(my_matrix.my_transpose).to eq([[1,2,3,4]])
      expect([[1,2],[3,4]].my_transpose).to eq([[1,3],[2,4]])
    end

    it "should return a new array" do
      expect(my_matrix.my_transpose.object_id).not_to be(my_matrix.object_id)
    end
  end

end
