# https://www.hackerrank.com/challenges/diagonal-difference

# Enter your code here. Read input from STDIN. Print output to STDOUT

size = gets.chomp.to_i

array = []
size.times do
  array << gets.chomp.split(" ")
end
def first_diagonal(array)
  memo = 0
  (0).upto(array.length-1) do |index|
    memo += array[index][index].to_i

  end
  memo
end

def second_diag(array)
  memo = 0
  row = 0
  (array.length-1).downto(0) do |column|
    memo += array[row][column].to_i 

    row += 1
  end
  memo
end

sum1 = first_diagonal(array)

sum2 = second_diag(array)

puts (sum1 - sum2).abs