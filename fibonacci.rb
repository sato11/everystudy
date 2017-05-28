# frozen_string_literal: true

def fibonacci(num)
  if num < 2
    num
  else
    a = 0 # n - 2
    b = 1 # n - 1
    (num - 2).times do
      a, b = b, a + b
    end
    b
  end
end

puts "Enter a number to count fibonacci's rabbits."
num = gets.chomp.to_i
puts fibonacci(num)
