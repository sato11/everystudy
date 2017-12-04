# frozen_string_literal: true

def fizzbuzz
  Array.new(1).cycle.lazy.zip(
    (Array.new(2) << 'fizz').cycle,
    (Array.new(4) << 'buzz').cycle
  ).with_index(1).map do |s, i|
    s.join.gsub(/^$/, i.to_s)
  end
end

puts 'Enter a number up to which you wanna fizzbuzz.'
num = gets.chomp.to_i
puts fizzbuzz.take(num).to_a
