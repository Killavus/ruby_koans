# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  return :equilateral if all_sides_equal(a, b, c)
  return :isosceles   if two_sides_equal(a, b, c)
  :scalene
end

def all_sides_equal(a, b, c)
  side_pairs(a, b, c).all? { |x, y| x == y }
end

def two_sides_equal(a, b, c)
  side_pairs(a, b, c).any? { |x, y| x == y }
end

def side_pairs(a, b, c)
  [a, b, c].combination(2)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
