class Box
  # Initialize our class variables
  @@count = 0

  def initialize(w = 3, h = 4)
    # assign instance avriables
    @width, @height = w, h
    @@count += 1
  end

  def self.print_count
    puts "Box count is : #@@count"
  end

  def to_s
    "(w:#@width,h:#@height)" # string formatting of the object.
  end

  def box_weight(kg = 40)
    puts(kg)
  end

  def +(other) # Define + to do vector addition
    Box.new(@width + 1, @height + 2)
  end
end
