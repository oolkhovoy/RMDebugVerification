# loop
i = 0
loop do #bp here should result into a dialog of 2 bp choices
  i += 2
  if i == 4
    next # bp here should skip rest of the code in this iteration
  end
  puts i
  if i == 6
    break # bp here should skip rest of the code in this iteration
  end
end

#todo Bug doesn't enter do block
# while loop
a = 0
while a < 3 do #bp here and F7
  puts a.to_s
  a += 1
end

#todo Bug doesn't enter do block
# until loop
a = 0
until a == 3 do #bp here and F7
  puts a.to_s
  a += 1
end

#todo Bug doesn't enter do block
# for loop
for i in 1..3 do #bp here and F7
  puts i
end
