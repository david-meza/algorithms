# https://www.hackerrank.com/challenges/library-fine/submissions/code/12571882

# Enter your code here. Read input from STDIN. Print output to STDOUT

actual_return = gets.chomp.split(" ").map(&:to_i)
expected_return = gets.chomp.split(" ").map(&:to_i)

if actual_return[2] > expected_return[2]
  puts "10000"
elsif actual_return[1] > expected_return[1] && !(actual_return[2] < expected_return[2])
  diff = actual_return[1] - expected_return[1]
  puts (diff * 500).to_s
elsif actual_return[0] > expected_return[0] && !(actual_return[1] < expected_return[1]) && !(actual_return[2] < expected_return[2])
  diff = actual_return[0] - expected_return[0]
  puts (diff * 15).to_s
else
  puts "0"
end