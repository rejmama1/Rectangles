require "lib/rectangles/input_reader"
require "lib/rectangles/square"

reader=InputReader.new
begin
  reader.load_input();



  sq1=Square.new(reader.edge1,reader.centerX1,reader.centerY1)
  sq2=Square.new(reader.edge2,reader.centerX2,reader.centerY2)

 
  sq1.intersection(sq2)
rescue Exception
  print "Spatny vstup."
end

