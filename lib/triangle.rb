class Triangle
  # write code here
  
  class TriangleError < StandardError
    def message
      "Invalid Triangle!"
    end
  end

  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side3 || @side1 == @side2 || @side2 == @side3
      :isosceles
    else @side1 != @side3 || @side1 != @side2 || @side2 != @side3
      :scalene
    end
    
    # elsif (@side1 + @side3) < @side2 || (@side1 + @side2) < @side3 || (@side2 + @side3) < @side1
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #       puts error.message
    
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
      end
    end
  end
  
  
end
