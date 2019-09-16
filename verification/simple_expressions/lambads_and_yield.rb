#lambda and proc
def method proc
  puts 'Start of method'
  proc.call #bp here and F7, should go to variable say assignment
  puts 'End of method'
end

say = lambda { puts 'Hello' }
method say

# yield
def my_method
  puts "reached the top"
  yield #bp here should go to my_method call
  puts "reached the bottom"
end

my_method do #bp here should go to my_method definition
  puts "reached yield"
end

# yield with params
def yield_with_params
  yield("John", 2) #bp here should go to yield_with_params call
end

yield_with_params { |name, age| puts "#{name} is #{age} years old" } #bp here should go to yield_with_params definition


# call with ampersand
def a_method(&block)
  block
end

a_method { "x" } #bp here should go to block inside a_method