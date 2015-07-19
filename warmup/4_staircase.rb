# https://www.hackerrank.com/challenges/staircase/submissions/code/12571457

# Enter your code here. Read input from STDIN. Print output to STDOUT
height = gets.chomp.to_i

going_up = 1
going_down = height - 1
while going_up <= height
  print " " * going_down
  print "#" * going_up
  print "\n"
  going_up += 1
  going_down -= 1
end