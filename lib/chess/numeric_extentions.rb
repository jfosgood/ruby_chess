class Numeric 
  def sign 
    if self > 0
      1
    else 
      self == 0 ? 0 : -1
    end 
  end 
end 