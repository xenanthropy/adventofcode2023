# frozen-string-literal: true

total = 0
File.open('../data/day1.txt', 'r').each_line do |line|
  line = line.strip.gsub(/[A-Za-z]/, '')
  line = "#{line[0]}#{line[-1]}"
  total += line.to_i
end
puts total
