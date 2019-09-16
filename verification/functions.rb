def say_hello(name)
  var = "Hello, " + name
  return var
end

def print_hello
  puts(say_hello("Joan"))
end

def dog_fun(animal = "dog".capitalize)
  animal
end

def cat_fun(animal = "  cat   ".strip)
  animal
end

def fun_caller(fun_a, fun_b)
  puts fun_a, fun_b
end

# Function inside function call
print_hello #bp here and F7, should go through functions call

# Smart Step Into call with pre-defined parameters
fun_caller(dog_fun, cat_fun("kIttY".downcase)) #bp here and Shift + F7, should give a choice in which function to go