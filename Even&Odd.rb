print "Enter numbers separated by spaces: "
input = gets.chomp

numbers = input.split.map(&:to_i)

even_numbers = []
odd_numbers = []

numbers.each do |number|
  if number % 2 == 0
    even_numbers << number
  else
    odd_numbers << number  
  end
end

if even_numbers.empty?
  puts "No even numbers entered."
else
  puts "Even numbers: #{even_numbers.join(' ')}"
end

if odd_numbers.empty?
  puts "No odd numbers entered."
else
  puts "Odd numbers: #{odd_numbers.join(' ')}"
end
