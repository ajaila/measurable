require File.join(File.dirname(__FILE__), "/../spec_helper")

describe "Pearson distance" do

  it "accepts two arguments" do
    expect { Measurable.pearson([5,7,4], [2,6,1]) }.to_not raise_error
    expect { Measurable.pearson([5,7,4], [2,6,1], [4, 5, 1]) }.to raise_error(ArgumentError)
  end

  it "shouldn't work with vectors of different length" do
    expect { Measurable.pearson([5,7,4], [1, 3, 5, 7]) }.to raise_error(ArgumentError)
  end

  it "should calculate correct values" do
    x = [-2.8, -1.8, -0.8, 1.2, 4.2]
    y = [-0.028, -0.018, -0.008, 0.012, 0.042]
    Measurable.pearson(x, y).should == 0.0

    x = [1, 2, 3, 5, 8]
    y = [0.11, 0.12, 0.13, 0.15, 0.18]
    Measurable.pearson(x, y).round(2).should == 0.04
  end

end