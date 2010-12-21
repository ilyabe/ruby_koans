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
  equal_sides = 0
  if a.equal? b
	  equal_sides += 1
  end
  
  if a.equal? c
	  equal_sides += 1
  end
  
  if b.equal? c
	  equal_sides += 1
  end
  
  if equal_sides == 3
	  :equilateral
  elsif equal_sides == 1
	  :isosceles
  else
	  :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end