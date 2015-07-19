# https://www.hackerrank.com/challenges/extra-long-factorials/submissions/code/12577694

# Enter your code here. Read input from STDIN. Print output to STDOUT

def factorial(n)
  return 1 if n <= 1
  n * factorial(n-1)
end

number = gets.chomp.to_i
puts factorial(number)