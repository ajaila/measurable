require File.join(File.dirname(__FILE__), "/../spec_helper")

describe "Minkowski" do

  before :all do
    @u = [1, 3, 6]
    @v = [1, 4, 7]
    @w = [4, 5, 6]
  end

  context "Distance" do
    it "accepts two arguments" do
      expect { Measurable.minkowski(@u, @v) }.to_not raise_error
      expect { Measurable.minkowski(@u, @v, @w) }.to raise_error(ArgumentError)
    end

    it "should be symmetric" do
      Measurable.minkowski(@u, @v).should == Measurable.minkowski(@v, @u)
    end

    it "should return the correct value" do
      Measurable.minkowski(@u, @u).should == 0
      Measurable.minkowski(@u, @v).should == 2
    end

    it "shouldn't work with vectors of different length" do
      expect { Measurable.minkowski(@u, [2, 2, 2, 2]) }.to raise_error(ArgumentError)
    end
  end
end