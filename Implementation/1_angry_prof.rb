# https://www.hackerrank.com/challenges/angry-professor/submissions/code/12580353

# Enter your code here. Read input from STDIN. Print output to STDOUT

def angry_prof(min, students_arrival)
  count = 0
  students_arrival.each do |arrival|
    count += 1 if arrival <= 0
    return "NO" if count >= min
  end
  return "YES"
end

test_cases = gets.chomp.to_i
test_cases.times do
  min_students_amt = gets.chomp.split(" ")[-1].to_i
  students_arrival = gets.chomp.split(" ").map(&:to_i)
  puts angry_prof(min_students_amt, students_arrival)
end