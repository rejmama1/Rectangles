# Square representation
require "lib/rectangles/rectangle"
class Square < Rectangle

  #Initialize given square
  def initialize(edge,x,y)
    super(edge,edge,x-(edge/2),y-(edge/2))
  end

  
end
