# frozen_string_literal: true

def fibonacci(num)
  return num if num < 2
  a = 0 # n - 2
  b = 1 # n - 1
  2.upto(num) do
    a, b = b, a + b
  end
  b
end

puts "Enter a number to count fibonacci's rabbits."
num = gets.chomp.to_i
puts fibonacci(num)
