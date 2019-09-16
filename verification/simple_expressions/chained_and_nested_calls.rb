# complicated call
[1, 2, 3].product([1, 2, 3]).reject { |a, b| a == b }.any? { |a, b| a + b == 3 } #bp here should result into a dialog of 4 bp choices

#chained call
max = "aaabb" #bp here, should step on every chained method via F7
          .chars #bp here, should step on every chained method via F7
          .chunk(&:itself) #bp here, should step on every chained method via F7
          .map(&:last) #bp here, should step on every chained method via F7
          .max_by(&:size) #bp here, should step on every chained method via F7