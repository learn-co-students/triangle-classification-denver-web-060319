class Triangle
  # triangle code
  def initialize(side_A, side_B, side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
  end

  def kind
    if @side_A <= 0 || @side_B <= 0 || @side_C <= 0
      raise TriangleError
    elsif @side_A + @side_B <= @side_C || @side_A + @side_C <= @side_B || @side_B + @side_C <= @side_A
      raise TriangleError
    elsif @side_A == @side_B && @side_B == @side_C
      return :equilateral
    elsif @side_A == @side_B || @side_B == @side_C || @side_A == @side_C
      return :isosceles
    elsif @side_A != @side_B && @side_B != @side_C && @side_A != @side_C
      return :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
