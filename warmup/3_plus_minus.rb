# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
numbers = gets.chomp.split(" ").map {|num| num.to_i }
pos = 0
neg = 0
zero = 0
numbers.each do |num|
  if num > 0
    pos += 1
  elsif num < 0
    neg += 1
  else
    zero += 1
  end
end
puts (pos/numbers.size.to_f).round(3).to_s
puts (neg/numbers.size.to_f).round(3).to_s
puts (zero/numbers.size.to_f).round(3).to_s