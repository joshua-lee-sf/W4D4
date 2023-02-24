require 'rspec'
require 'towers_of_hanoi'

describe 'TowersOfHanoi' do
  subject { TowersofHanoi.new(3) }

  describe "#initialize" do
    it "should create an array of three towers" do
    expect(subject.stacks.length).to eq(3)
    end

    it "should create a full stack at the first rod and two empty stacks for the next two" do
    expect(subject.stacks[0]).to eq((1..subject.max_height).to_a)
    expect(subject.stacks[1]).to eq([])
    expect(subject.stacks[2]).to eq([])
    end
  end

  describe "#move" do
    it "should move a disk from the top of the given stack and place the disk on top of the given stack" do
      expect(subject.move(0, 2)).to eq([[2,3], [], [1]])
    end

    it "should only place a disk in a stack if the disk is smaller than the top disk of the given tower" do
    end

  end

  describe "#won?" do
  end


end
