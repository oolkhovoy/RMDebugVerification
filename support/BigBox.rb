require_relative 'Box'
# define a subclass
class BigBox < Box
  MATERIAL = "wood"
  # add a new instance method
  def printArea
    @area = @width * @height
    puts "Big box area is : #@area"
  end

  def box_weight(kg = 400)
    super(kg)
  end
end
