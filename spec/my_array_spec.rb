require "rspec"
require "my_array"

describe Array do
  subject(:my_array) {[1,2,1,3,3]}
  
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
end