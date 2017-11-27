class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle?
    !(((@side1 + @side2) <= (@side3)) | ((@side1 + @side3) <= (@side2)) | ((@side2 + @side3) <= (@side1)))
  end

  def equilateral?
    (@side1 == @side2) & (@side2 == @side3)
  end

  def isoceles?
    (@side1 == @side2) | (@side2 == @side3) | (@side1 == @side3)
  end

  def scalene?
    (@side1 != @side2) & (@side2 != @side3) & (@side1 != @side3)
  end
end
