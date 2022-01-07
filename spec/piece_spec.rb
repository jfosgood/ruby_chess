require_relative "spec_helper.rb"

module Chess
  RSpec.describe Piece do 
    context "#intitialize" do 
      it "can be initialized with color and type" do 
        expect { Piece.new(:white, :knight) }.not_to raise_error
      end
      it "raises error when initialized without color and type" do
        expect { Piece.new() }.to raise_error
      end 
    end
    
    context "#initial_type" do 
      it "returns the first letter of it's @type" do
        piece = Piece.new(:white, :king)
        expect(piece.initial_type).to eq('k')
      end
      
      it "returns 'n' when type is :knight" do
        piece = Piece.new(:white, :knight)
        expect(piece.initial_type).to eq('n')
      end
    end
    
    context "#==(other)" do 
      
      let(:other) { Piece.new(:white, :knight) }
      
      it "returns true for two pieces with same color and type" do 
        same = Piece.new(:white, :knight)
        expect(same.==(other)).to be true
      end
      
      it "returns false when other is not instance of Piece" do
        not_piece = Object.new
        expect(other.==(not_piece)).to be false
      end 
      
      it "returns false when other is instance of Piece with different color" do
        different_color = Piece.new(:black, :knight)
        expect(different_color.==(other)).to be false
      end
      
      it "returns false when other is instance of piece with different type" do 
      end 
    end
  end 
end 