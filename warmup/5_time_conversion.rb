# https://www.hackerrank.com/challenges/time-conversion/submissions/code/12571561

# Enter your code here. Read input from STDIN. Print output to STDOUT

input = gets.chomp
am_or_pm = input[-2].upcase
if input[0] == "1" && input[1] == "2" && am_or_pm == "A"
  puts "00" + input[2...-2]
elsif input[0] == "1" && input[1] == "2" && am_or_pm == "P"
  puts "12" + input[2...-2]
elsif am_or_pm == "P"
  input[0] = input[0].to_i.+(1).to_s
  input[1] = input[1].to_i.+(2).to_s
  puts input[0...-2]
else
  puts input[0...-2]
end