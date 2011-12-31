# Represents rectangle

class Rectangle
  attr_reader :height,:topleftx,:toplefty,:width,:union
  @height
  @width
  @topleftx
  @toplefty
  @union
  def initialize(height,width,x,y)
    @height=height
    @width=width
    @topleftx=x
    @toplefty=y
  end



  #Counts if given rectangles have intersection;
  #if *yes* -> counts its union;
  #if *no* -> writes <em>no-touch</em> message

  def intersection(r2)
    r3=get_bounding_rectangle(r2)
    #puts "Rectangle x=#{r3.topleftx},y=#{r3.toplefty},height=#{r3.height},width=#{r3.width}"

    intersection_width=@width+r2.width-r3.width
    intersection_height=@height+r2.height-r3.height
    intersect=intersection_width>=0 && intersection_height>=0

    if intersect then
      @union=self.area+r2.area-(intersection_height*intersection_width)
      puts "Obsah sjednoceni dvou ctvercu je #{@union}."
    else
      puts "Ctverce se ani nedotykaji."
    end
   
  end

  #Evaluates renctangle´s area.

  def area
    return @width*@height
  end

  private

#    Evaluates rectangle which bounds both given rectangles

  def get_bounding_rectangle(r2)
    boundleft=[@topleftx,r2.topleftx].min
    boundtop=[@toplefty,r2.toplefty].min
    boundheight=([@toplefty+@height,r2.toplefty+r2.height].max - boundtop).abs
    boundwidth=([@topleftx+@width,r2.topleftx+r2.width].max - boundleft).abs
    return Rectangle.new(boundheight,boundwidth,boundleft,boundtop)
  end


end
