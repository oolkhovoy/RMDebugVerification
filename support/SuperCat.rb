class SuperCat

  def initialize(height, weight, tail_color, head_color, legs_color)
    @height, @weight, @tail_color, @head_color, @legs_color = height, weight, tail_color, head_color, legs_color
  end

  def SuperCat.white_cat(height, weight)
    new(height, weight, "white", "white", "white")
  end

  def SuperCat.black_cat(height, weight)
    new(height, weight, "black", "black", "black")
  end

  def SuperCat.big_cat(tail_color, head_color, legs_color)
    new(100, 100, tail_color, head_color, legs_color)
  end

end

