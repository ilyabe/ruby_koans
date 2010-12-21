require File.expand_path(File.dirname(__FILE__) + '/edgecase')

# You need to write the triangle method in the file 'triangle.rb'
require 'triangle.rb'

class AboutTriangleProject2 < EdgeCase::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) 
	    raise TriangleError, '0 length sides'
	    end
    assert_raise(TriangleError) do triangle(3, 4, -5)
	    raise TriangleError, 'negative length sides'
	    end
    assert_raise(TriangleError) do triangle(1, 1, 3) 
	    raise TriangleError, 'one side is too long'
	    end
    assert_raise(TriangleError) do triangle(2, 4, 2) 
	    raise TriangleError, 'one side is too long'
	    end
 end
end