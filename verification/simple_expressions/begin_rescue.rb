# with exception
begin #bp here should go through all rescues and ensure
  oops
rescue TypeError => e
  puts "Name error"
rescue
  puts "rescued"
ensure
  puts("ensured")
end

#without exception
begin #bp here should go through all rescues and end on else
  puts "correct"
rescue
  puts "Something went wrong"
else
  puts "Everything good"
end