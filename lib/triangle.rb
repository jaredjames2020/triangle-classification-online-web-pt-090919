class Triangle
  # write code here
  
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
    elsif @side1 != @side3 || @side1 != @side2 || @side2 != @side3
      :scalene
    elsif (@side1 + @side3) < @side2 || (@side1 + @side2) < @side3 || (@side2 + @side3) < @side1
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
    #end
  end
    
  class TriangleError < StandardError
    def message
      "Invalid Triangle!"
    end
  end
end
end
