require_relative "spec_helper.rb"

RSpec.describe Numeric do 
  context "#sign" do 
    it "returns 1 for positive number" do 
      number = 5
      expect(number.sign).to eq(1)
    end
    
    it "returns -1 for negative number" do 
      number = -3
      expect(number.sign).to eq(-1)
    end
    
    it "returns 0 for 0" do 
      zero = 0
      expect(zero.sign).to eq(0)
    end
    
  end 
end 