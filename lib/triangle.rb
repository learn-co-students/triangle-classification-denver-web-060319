class Triangle
  attr_accessor :sidea, :sideb, :sidec

  def initialize(sidea, sideb, sidec)
    check_for_errors(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = b
    @sidec = c
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b && a != c || a != b && b == c || a != b && a == c
      :isosceles
    else
      :scalene
    end
  end

  def no_size(a, b, c)
    if a <= 0 || b <= 0 || c <= 0 
      raise TriangleError
    end
  end

  def sum_of_two_greater_than_third(a, b, c)
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end   
  end

  def check_for_errors(a, b, c)
    no_size(a, b, c)
    sum_of_two_greater_than_third(a, b, c)
  end

  class TriangleError < StandardError


  end
end
