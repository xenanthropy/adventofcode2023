# frozen-string-literal: true

def part_one
  total = 0
  File.open('../data/day1.txt', 'r').each_line do |line|
    line = line.strip.gsub(/[A-Za-z]/, '')
    line = "#{line[0]}#{line[-1]}"
    total += line.to_i
  end
  puts total
end

def part_two
  total = 0
  File.open('../data/day1.txt', 'r').each_line do |line|
    line = convert_line(line)
    line = "#{line[0]}#{line[-1]}"
    total += line.to_i
  end
  total
end

def convert_line(line)
  number_array = %w[zero one two three four five six seven eight nine].freeze
  converted_line = ''
  line.length.times do |count|
    number_array.each_with_index do |val, index|
      converted_line += line[count].to_s if line[count] == index.to_s
      line_snippet = ''
      line_snippet = line.slice(count, val.length) unless val.length > line.length - count || !line[count].to_i.zero?
      converted_line += index.to_s unless line_snippet.index(val).nil?
    end
  end
  converted_line
end

#put 'Part 1: '
#part_one

puts 'Part 2: '
puts part_two
