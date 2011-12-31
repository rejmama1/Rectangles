# To change this template, choose Tools | Templates
# and open the template in the editor.

require './../lib/rectangles/square'
require './../lib/rectangles/rectangle'

describe Square do
 

  it "Intersecion 4,0,0 - 2,2,2" do
    
  sq1=Square.new(4,0,0)
  sq2=Square.new(2,2,2)

  #puts "sq1 topleft x=#{sq1.topleftx} a y=#{sq1.toplefty}"
  #puts "sq2 topleft x=#{sq2.topleftx} a y=#{sq2.toplefty}"

  sq1.intersection(sq2).should=="Obsah sjednoceni dvou ctvercu je 19."

    


   
  end
end

