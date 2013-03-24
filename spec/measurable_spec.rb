describe Measurable do

  let(:u) { [1, 3, 16] }
  let(:v) { [1, 4, 16] }
  let(:w) { [4, 5, 6] }

  describe "Euclidean distance" do
    it "accepts two arguments" do
      expect { Measurable::euclidean(:u) }.to raise_error(ArgumentError)
      expect { Measurable::euclidean(:u, :v) }.to_not raise_error(ArgumentError)
      expect { Measurable::euclidean(:u, :v, :w) }.to raise_error(ArgumentError)
    end
    
    it "accepts one argument and returns the vector's norm"
            
    it "should be symmetric"

    it "should return the correct value" do
      Measurable::euclidean(:u, :u).should == 0
      euclidean(:u, :v).should == 1
    end
    
    it "shouldn't work with vectors of different length" do
      expect { Measurable::euclidean(:u, [2, 2, 2, 2]) }.to raise_error(DiffLengthError)
    end
  end

  describe "Binary union" do

  describe "Binary intersection" do

  describe "Cosine similarity measure" do
    it "accepts two arguments"
    
    it "accepts one argument and returns the vector's norm"
    
    it "should handle NaN's"
    
    it "should be symmetric"

    it "should return the correct value"

    it "shouldn't work with vectors of different length"
  end
    
  describe "Chebyshev distance" do
    it "accepts two arguments"
    
    it "accepts one argument and returns the vector's norm"
        
    it "should be symmetric"

    it "should return the correct value"
    
    it "shouldn't work with vectors of different length"
  end
  
  describe "Max-min similarity measure" do
    it "accepts two arguments"
    
    it "accepts one argument and returns the vector's norm"
    
    it "should be symmetric"

    it "should return the correct value"

    it "shouldn't work with vectors of different length"
  end
end