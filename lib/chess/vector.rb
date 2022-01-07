module Chess 
  class Vector 
    attr_reader :x, :y 
    
    def initialize(x, y)
      @x, @y = x, y
    end
    
    def +(other)
      x = @x + other[0]
      y = @y + other[1]
      Vector.new(x, y)
    end
    
    def -(other)
      x = @x - other[0]
      y = @y - other[1]
      Vector.new(x, y)
    end 
    
    def *(number)
      x = @x * number
      y = @y * number 
      Vector.new(x, y)
    end 
    
    def ==(other)
      return false unless other.respond_to?(:[])
      @x == other[0] and @y == other[1]
    end
    
    def [](i)
      case i 
      when 0
        @x
      when 1
        @y 
      end
    end 
    
    def clone
      Vector.new(@x, @y)
    end
  end
end