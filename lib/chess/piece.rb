module Chess
  class Piece 
    attr_reader :color, :type
    def initialize(color, type)
      @color = color 
      @type = type
    end 
    
    def initial_type
      if @type == :knight
        'n'
      else
        @type.to_s[0,1]
      end 
    end
    
    def ==(other)
      return false unless other.respond_to?(:color)
      (@type == other.type and @color == other.color)
    end 
    
  end
end