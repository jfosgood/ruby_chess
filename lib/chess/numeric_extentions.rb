class Numeric 
  def sign 
    if self > 0
      1
    else 
      -1 if self < 0 else 0
    end 
  end 
end 