# Reads user input
class InputReader
  attr_reader :edge1,:edge2,:centerX1,:centerX2,:centerY1,:centerY2
  @edge1
  @egde2
  @centerX1
  @centerY1
  @centerX2
  @centerY2

  # Initialize reader
  def initialize
  end
  


  # Collects input data from user. Fails if given information is in wrong format.

  def load_input
    print "Zadejte delku hrany prvniho ctverce:"
  
      @edge1=Float(gets)
      if @edge1 < 0 then
        raise Exception
      end
      
      print "Zadejte x-ovou souradnici stredu prvniho ctverce:"
      @centerX1=Float(gets)
      print "Zadejte y-ovou souradnici stredu prvniho ctverce:"
      @centerY1=Float(gets)

      print "Zadejte delku hrany druheho ctverce:"
      @edge2=Float(gets)
      if @edge2 < 0 then
        raise Exception
      end

      print "Zadejte x-ovou souradnici stredu druheho ctverce:"
      @centerX2=Float(gets)
      print "Zadejte y-ovou souradnici stredu druheho ctverce:"
      @centerY2=Float(gets)


    
  end

 
end
