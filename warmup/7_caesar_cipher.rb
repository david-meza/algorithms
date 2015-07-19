# https://www.hackerrank.com/challenges/caesar-cipher-1/submissions/code/12577610

# Enter your code here. Read input from STDIN. Print output to STDOUT
gets
word = gets.chomp.split("")
displacement = gets.chomp.to_i
encrypted = word.map do |char|
  position = char.ord
  case position
  when (65..90)
    shifted = position + (displacement % 26) # use % 26 to account for shift factors over 26
    if shifted > 90 # loops around and accounts for going into lowercase letter territory
      shifted -= 26
    end
    position = shifted.chr
  when (97..122)
    shifted = position + (displacement % 26) # use % 26 to account for shift factors over 26
    if shifted > 122 # loop around
      shifted -= 26
    end
    position = shifted.chr
  else
    position.chr # ignore non-alphabet chars
  end
end

puts encrypted.join("")