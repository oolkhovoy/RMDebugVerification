# Rightward assignment
0 => a
p a

# Changes in in
x = 1 in 1
p x

# Find pattern (Experimental)
case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
  p pre #=> ["a", 1]
  p x #=> "b"
  p y #=> "c"
  p post #=> [2, "d", "e", "f", 3]
end

# Endless method definition
def square(x) = x * x

square 94

# Hash#except
h = { a: 1, b: 2, c: 3 }
p h.except(:a)

# method with leading argument
def method_m(...)
  puts ...
end

method_m 1