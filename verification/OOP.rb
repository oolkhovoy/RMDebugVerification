require_relative '../support/BigBox'
require_relative '../support/Cat'
require_relative '../support/SuperCat'
require_relative '../support/Bank'
require_relative '../support/SingletonClass'

# Simple class initialization
# doesn't work for ruby-debug-ide 0.8.0.beta8, debase 0.3.0.beta8
simple = Cat.new #bp here and F7, should go to second line

# Class with initialize method
# doesn't work for ruby-debug-ide 0.8.0.beta8, debase 0.3.0.beta8
box = Box.new(10, 20) #bp here and F7, should go to initialize method of Box class

# Creating instance using allocate (without calling its constructor initialize)
allocated_box = Box.allocate #bp here and F7, should go to second line

# multiple constructors
SuperCat.black_cat(13, 20) #bp here should go into black_cat method when into initialize method

# access level (private)
Bank.new.make_withdrawal(100) #bp here

#todo Bug
# Method overriding (plus sign)
# doesn't work for ruby-debug-ide 0.8.0.beta8, debase 0.3.0.beta8
puts(box + box) #bp here and F7, should go to + method of Box class

# to_s method verification
puts "String representation of box is : #{box}" #bp here and F7, should go to to_s method of Box class

# Class variable call
Box.print_count #bp here and F7, should go to printCount method of Box class

# Inherited class instance creation
# doesn't work for ruby-debug-ide 0.8.0.beta8, debase 0.3.0.beta8
big_box = BigBox.new(10, 20) #bp here and F7, should go to initialize method of Box class, not BigBox class

# Inherited with super methods call
# doesn't work for ruby-debug-ide 0.8.0.beta8, debase 0.3.0.beta8
big_box.box_weight #bp here and F7, firstly, should go to box_weight method of BigBox class, secondly to box_weight method of Box

# attribute_accessor
#todo Bug
cat_object = Cat.new
cat_object.name = "Kitten" #bp here and F7, should go to second line
cat_object.name #bp here and F7, should go to second line

# Structs
ExtraCat = Struct.new("ExtraCat", :name, :age, :weight)
lucky = ExtraCat.new("Lucky", 2, 4) # bp here

# Mixin
Cat.new.inside_module #bp here should lead to inside_module allocated in mixed Module

# Singleton creation
single = SingletonClass.instance #bp here
single.shout #bp here should lead to method shout of SingletonClass