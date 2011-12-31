# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'test/unit'
require 'lib/rectangles/square'


class IntersectionTest < Test::Unit::TestCase
  def test_intersection
    sq1=Square.new(4,0,0)
    sq2=Square.new(2,2,2)
    sq1.intersection(sq2)
    assert_equal(sq1.union,19)
    
  end
end
